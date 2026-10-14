<#
.SYNOPSIS
  Menyalin log dari probation-review ke ai/sessions dan ringkasannya ke ai/prompt-history.
.DESCRIPTION
  Mode bawaan adalah dry-run. -Apply menyalin file dan menghapus sumber hanya setelah kedua tujuan berhasil ditulis.
#>
[CmdletBinding()]
param(
    [string]$Root,
    [switch]$Apply
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"
Import-Module (Join-Path $PSScriptRoot "lib\GtContext.psm1") -Force

if ([string]::IsNullOrWhiteSpace($Root)) {
    $Root = Get-GtRoot
}
$Root = (Resolve-Path -LiteralPath $Root).Path
$sourceRoot = Join-Path $Root "probation-review"
$logs = @(Get-ChildItem -LiteralPath $sourceRoot -Recurse -File -Filter *.md | Where-Object { $_.Name -ne "README.md" })

if ($logs.Count -eq 0) {
    Write-Output "Tidak ada log untuk dimigrasi."
    exit 0
}

foreach ($log in $logs) {
    $relative = Get-GtRelativePath -Root $sourceRoot -Path $log.FullName
    $sessionTarget = Join-Path (Join-Path $Root "ai\sessions") ($relative -replace '/', '\')
    $historyName = [System.IO.Path]::GetFileNameWithoutExtension($log.Name) + "-prompt.md"
    $historyTarget = Join-Path (Join-Path $Root "ai\prompt-history") $historyName
    $meta = Get-GtFrontmatter -Raw (Read-GtText -Path $log.FullName)
    if ($null -eq $meta) {
        Write-Output "LEWATI $relative karena frontmatter tidak ada."
        continue
    }
    Write-Output ("RENCANA {0} -> ai/sessions/{1} dan ai/prompt-history/{2}" -f $relative, $relative, $historyName)
    if (-not $Apply) { continue }

    $raw = Read-GtText -Path $log.FullName
    $findings = @(Get-GtSecretFindings -Text $raw -Label $relative)
    if ($findings.Count -gt 0) {
        Write-Output "Migrasi dihentikan. Pola secret ada pada $relative. Nilai tidak ditampilkan."
        exit 2
    }

    $prompt = "UNKNOWN"
    $promptMatch = [regex]::Match($raw, '(?m)^\| prompt \| (?<value>.*) \|$')
    if ($promptMatch.Success) { $prompt = $promptMatch.Groups["value"].Value }
    $platform = "UNKNOWN"
    $platformMatch = [regex]::Match($raw, '(?m)^\| platform \| (?<value>.*) \|$')
    if ($platformMatch.Success) { $platform = $platformMatch.Groups["value"].Value }

    $history = @"
---
title: "Prompt $historyName"
doc_type: log
status: $($meta["status"])
confidence: $($meta["confidence"])
owner: $($meta["owner"])
source: "ai/sessions/$relative"
last_verified: $($meta["last_verified"])
next_review: $($meta["next_review"])
sensitivity: $($meta["sensitivity"])
summary: "Ringkasan prompt dari $relative."
---

# Ringkasan prompt

- Platform: $platform
- Prompt: $prompt
- Sesi lengkap: [ai/sessions/$relative](../sessions/$relative)
"@
    Write-GtText -Path $sessionTarget -Content $raw
    Write-GtText -Path $historyTarget -Content $history
    Remove-Item -LiteralPath $log.FullName
    Write-Output "PINDAH $relative"
}

if (-not $Apply) {
    Write-Output "Dry-run selesai. Tambahkan -Apply untuk memindahkan file."
}
exit 0
