<#
.SYNOPSIS
  Menulis log sesi AI ke probation-review setelah memindai secret.
.PARAMETER InputFile
  JSON dengan field session. Field yang tidak dikenal diabaikan.
#>
[CmdletBinding()]
param(
    [string]$Root,
    [string]$InputFile,
    [string]$Platform,
    [string]$Model = "UNKNOWN",
    [string]$Workspace = "UNKNOWN",
    [string]$Project = "UNKNOWN",
    [string]$Prompt,
    [string]$Goal,
    [string]$FilesTouched = "",
    [string]$Decisions = "",
    [string]$ImportantOutput = "",
    [string]$FollowUp = "",
    [string]$Status = "draft",
    [ValidateSet("yes", "no", "unknown")][string]$Persist = "unknown",
    [ValidateSet("public", "internal", "restricted")][string]$Sensitivity = "internal",
    [string]$SessionId = ""
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"
Import-Module (Join-Path $PSScriptRoot "lib\GtContext.psm1") -Force

if ([string]::IsNullOrWhiteSpace($Root)) {
    $Root = Get-GtRoot
}
$Root = (Resolve-Path -LiteralPath $Root).Path

function Get-Field($Object, [string]$Name, [string]$Fallback) {
    if ($null -eq $Object) { return $Fallback }
    $property = $Object.PSObject.Properties[$Name]
    if ($null -eq $property -or [string]::IsNullOrWhiteSpace([string]$property.Value)) {
        return $Fallback
    }
    return [string]$property.Value
}

$timestamp = (Get-Date).ToUniversalTime().ToString("yyyy-MM-ddTHH:mm:ssZ")
if (-not [string]::IsNullOrWhiteSpace($InputFile)) {
    $json = Get-Content -LiteralPath $InputFile -Raw -Encoding UTF8 | ConvertFrom-Json
    $timestamp = Get-Field $json "timestamp" $timestamp
    $Platform = Get-Field $json "platform" $Platform
    $Model = Get-Field $json "model" $Model
    $Workspace = Get-Field $json "workspace" $Workspace
    $Project = Get-Field $json "project" $Project
    $Prompt = Get-Field $json "prompt" $Prompt
    $Goal = Get-Field $json "goal" $Goal
    $FilesTouched = Get-Field $json "files_touched" $FilesTouched
    $Decisions = Get-Field $json "decisions" $Decisions
    $ImportantOutput = Get-Field $json "important_output" $ImportantOutput
    $FollowUp = Get-Field $json "follow_up" $FollowUp
    $Status = Get-Field $json "status" $Status
    $Persist = Get-Field $json "persist_to_knowledge_base" $Persist
    $Sensitivity = Get-Field $json "sensitivity" $Sensitivity
    $SessionId = Get-Field $json "session_id" $SessionId
}

if ([string]::IsNullOrWhiteSpace($Platform) -or [string]::IsNullOrWhiteSpace($Prompt) -or [string]::IsNullOrWhiteSpace($Goal)) {
    Write-Output "Platform, prompt, dan goal wajib diisi."
    exit 1
}
if (@("yes", "no", "unknown") -notcontains $Persist) { $Persist = "unknown" }
if (@("public", "internal", "restricted") -notcontains $Sensitivity) {
    Write-Output "Sensitivity tidak dikenal."
    exit 1
}
if ($Sensitivity -eq "restricted") {
    Write-Output "Konten restricted tidak ditulis ke repository."
    exit 1
}

$allowedStatus = @("draft", "active", "paused", "completed", "archived", "proposed", "superseded")
if ($allowedStatus -notcontains $Status) { $Status = "draft" }

function ConvertTo-OneLine([string]$Value) {
    if ([string]::IsNullOrWhiteSpace($Value)) { return "" }
    return (($Value -replace '\|', '/') -replace '\s+', ' ').Trim()
}

$Platform = ConvertTo-OneLine $Platform
$Model = ConvertTo-OneLine $Model
$Workspace = ConvertTo-OneLine $Workspace
$Project = ConvertTo-OneLine $Project
$Prompt = ConvertTo-OneLine $Prompt
$Goal = ConvertTo-OneLine $Goal
$FilesTouched = ConvertTo-OneLine $FilesTouched
$Decisions = ConvertTo-OneLine $Decisions
$ImportantOutput = ConvertTo-OneLine $ImportantOutput
$FollowUp = ConvertTo-OneLine $FollowUp

if ([string]::IsNullOrWhiteSpace($SessionId)) {
    $sha = [System.Security.Cryptography.SHA256]::Create()
    $bytes = [System.Text.Encoding]::UTF8.GetBytes("$timestamp|$Platform|$Prompt")
    $SessionId = ([BitConverter]::ToString($sha.ComputeHash($bytes))).Replace("-", "").ToLowerInvariant().Substring(0, 12)
}

$slug = ([regex]::Replace($Platform.ToLowerInvariant(), "[^a-z0-9]+", "-")).Trim("-")
if ([string]::IsNullOrWhiteSpace($slug)) { $slug = "ai" }
$when = [datetime]::Parse($timestamp).ToUniversalTime()
$stamp = $when.ToString("yyyyMMddTHHmmssZ")
$verifiedOn = $when.ToString("yyyy-MM-dd")
$reviewOn = $when.AddDays(31).ToString("yyyy-MM-dd")
$folder = Join-Path $Root (Join-Path "probation-review" (Join-Path $when.ToString("yyyy") $when.ToString("MM")))
$name = "$stamp-$slug-$SessionId.md"
$destination = Join-Path $folder $name

$body = @"
---
title: "Sesi $slug $SessionId"
doc_type: log
status: $Status
confidence: CONFIRMED
owner: repository-maintainer
source: "scripts/log-ai-session.ps1"
last_verified: $verifiedOn
next_review: $reviewOn
sensitivity: $Sensitivity
summary: "Log sesi $slug untuk proyek $Project."
---

# Sesi $slug $SessionId

| Field | Nilai |
| --- | --- |
| timestamp | $timestamp |
| platform | $Platform |
| model | $Model |
| workspace | $Workspace |
| project | $Project |
| prompt | $Prompt |
| goal | $Goal |
| files_touched | $FilesTouched |
| decisions | $Decisions |
| important_output | $ImportantOutput |
| follow_up | $FollowUp |
| status | $Status |
| persist_to_knowledge_base | $Persist |
| sensitivity | $Sensitivity |
| session_id | $SessionId |

Catatan ini berada di probation-review sampai migrasi disetujui.
"@

$findings = @(Get-GtSecretFindings -Text $body -Label $name)
if ($findings.Count -gt 0) {
    Write-Output "Log ditolak. Pola secret terdeteksi dan file tidak ditulis."
    foreach ($finding in $findings) {
        Write-Output ("- baris {0} pola {1}" -f $finding.Line, $finding.Rule)
    }
    exit 2
}

Write-GtText -Path $destination -Content $body
Write-Output (Get-GtRelativePath -Root $Root -Path $destination)
exit 0
