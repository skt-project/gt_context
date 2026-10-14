<#
.SYNOPSIS
  Memeriksa metadata, tautan relatif, status proyek, dan pola secret.
#>
[CmdletBinding()]
param(
    [string]$Root
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"
Import-Module (Join-Path $PSScriptRoot "lib\GtContext.psm1") -Force

if ([string]::IsNullOrWhiteSpace($Root)) {
    $Root = Get-GtRoot
}
$Root = (Resolve-Path -LiteralPath $Root).Path

$required = @(
    "title", "doc_type", "status", "confidence", "owner",
    "source", "last_verified", "next_review", "sensitivity", "summary"
)
$confidenceValues = @("CONFIRMED", "INFERRED", "UNKNOWN", "OUTDATED")
$statusValues = @("draft", "active", "paused", "completed", "archived", "proposed", "superseded")
$docTypes = @("overview", "profile", "policy", "guide", "template", "catalog", "audit", "reference", "log", "decision", "generated", "index")
$sensitivityValues = @("public", "internal", "restricted")
$today = (Get-Date).Date
$errors = New-Object System.Collections.Generic.List[string]
$titles = @{}
$factIds = @{}

function Add-Error([string]$Message) {
    $script:errors.Add($Message) | Out-Null
}

function Test-GtDate([string]$Value) {
    $parsed = [datetime]::MinValue
    return [datetime]::TryParseExact(
        $Value,
        "yyyy-MM-dd",
        [System.Globalization.CultureInfo]::InvariantCulture,
        [System.Globalization.DateTimeStyles]::None,
        [ref]$parsed
    )
}

Invoke-GtScannerSelfTest

$files = @(Get-ChildItem -LiteralPath $Root -Recurse -File -Filter *.md | Where-Object {
    $_.FullName -notmatch '\\(\.git|node_modules)\\'
})

foreach ($file in $files) {
    $relative = Get-GtRelativePath -Root $Root -Path $file.FullName
    $raw = Read-GtText -Path $file.FullName
    $needsFrontmatter = $relative -match '^(README|AGENTS|AI_CONTEXT|CONTRIBUTING|SECURITY|CHANGELOG|CLAUDE)\.md$' -or
        $relative -match '^(context|projects|systems|knowledge|operations|ai|docs|probation-review)/'
    $meta = Get-GtFrontmatter -Raw $raw

    if ($needsFrontmatter -and $null -eq $meta) {
        Add-Error "$relative tidak memiliki frontmatter."
        continue
    }
    if ($null -eq $meta) { continue }

    foreach ($key in $required) {
        if (-not $meta.ContainsKey($key) -or [string]::IsNullOrWhiteSpace([string]$meta[$key])) {
            Add-Error "$relative kehilangan '$key'."
        }
    }

    if ($meta.ContainsKey("confidence") -and $confidenceValues -notcontains $meta["confidence"]) {
        Add-Error "$relative confidence tidak dikenal: $($meta["confidence"])."
    }
    if ($meta.ContainsKey("status") -and $statusValues -notcontains $meta["status"]) {
        Add-Error "$relative status tidak dikenal: $($meta["status"])."
    }
    if ($meta.ContainsKey("doc_type") -and $docTypes -notcontains $meta["doc_type"]) {
        Add-Error "$relative doc_type tidak dikenal: $($meta["doc_type"])."
    }
    if ($meta.ContainsKey("sensitivity") -and $sensitivityValues -notcontains $meta["sensitivity"]) {
        Add-Error "$relative sensitivity tidak dikenal: $($meta["sensitivity"])."
    }
    if ($meta.ContainsKey("sensitivity") -and $meta["sensitivity"] -eq "restricted" -and $meta["doc_type"] -ne "template") {
        Add-Error "$relative ber-sensitivity restricted dan tidak boleh masuk commit."
    }
    foreach ($dateKey in @("last_verified", "next_review")) {
        if ($meta.ContainsKey($dateKey) -and -not [string]::IsNullOrWhiteSpace([string]$meta[$dateKey])) {
            if (-not (Test-GtDate ([string]$meta[$dateKey]))) {
                Add-Error "$relative $dateKey bukan tanggal yyyy-MM-dd."
            }
        }
    }
    if ($meta.ContainsKey("next_review") -and (Test-GtDate ([string]$meta["next_review"]))) {
        $review = [datetime]::ParseExact($meta["next_review"], "yyyy-MM-dd", [System.Globalization.CultureInfo]::InvariantCulture)
        if ($review.Date -lt $today) {
            Add-Error "$relative sudah melewati next_review $($meta["next_review"])."
        }
    }
    if ($meta.ContainsKey("summary") -and $meta["summary"] -match '\|') {
        Add-Error "$relative summary berisi karakter pipa."
    }
    if ($meta.ContainsKey("title") -and -not [string]::IsNullOrWhiteSpace([string]$meta["title"])) {
        $titleKey = [string]$meta["title"]
        if ($titles.ContainsKey($titleKey)) {
            Add-Error "Judul ganda '$titleKey' pada $relative dan $($titles[$titleKey])."
        }
        else {
            $titles[$titleKey] = $relative
        }
    }
    if ($meta.ContainsKey("fact_id") -and -not [string]::IsNullOrWhiteSpace([string]$meta["fact_id"])) {
        $factKey = [string]$meta["fact_id"]
        $factSummary = [string]$meta["summary"]
        if ($factIds.ContainsKey($factKey)) {
            if ($factIds[$factKey].Summary -ne $factSummary) {
                Add-Error "fact_id $factKey bentrok antara $relative dan $($factIds[$factKey].Path)."
            }
        }
        else {
            $factIds[$factKey] = @{ Path = $relative; Summary = $factSummary }
        }
    }

    $inLifecycle = $relative -match '^projects/(active|completed|archived)/.+\.md$' -and
        $relative -notmatch '/README\.md$'
    if ($inLifecycle -and -not $meta.ContainsKey("project_status")) {
        Add-Error "$relative belum memiliki project_status."
    }

    $matches = [regex]::Matches($raw, '!\[[^\]]*\]\(([^)]+)\)|\[[^\]]*\]\(([^)]+)\)')
    foreach ($match in $matches) {
        $target = $match.Groups[1].Value
        if ([string]::IsNullOrWhiteSpace($target)) { $target = $match.Groups[2].Value }
        $target = ($target -split '\s+')[0]
        if ($target -match '^(https?:|mailto:|#)') { continue }
        $pathOnly = ($target -split '#')[0]
        if ([string]::IsNullOrWhiteSpace($pathOnly)) { continue }
        $decoded = [System.Uri]::UnescapeDataString($pathOnly)
        $candidate = [System.IO.Path]::GetFullPath((Join-Path $file.DirectoryName $decoded))
        if (-not (Test-Path -LiteralPath $candidate)) {
            Add-Error "$relative memiliki tautan relatif yang tidak ada: $target"
        }
    }
}

$secretFiles = @(Get-ChildItem -LiteralPath $Root -Recurse -File | Where-Object {
    $_.FullName -notmatch '\\(\.git|node_modules)\\' -and
    $_.Length -lt 1048576 -and
    $_.Extension -match '^\.(md|ps1|psm1|yml|yaml|json|jsonc|toml|txt|mdc)$'
})
foreach ($file in $secretFiles) {
    $relative = Get-GtRelativePath -Root $Root -Path $file.FullName
    $findings = @(Get-GtSecretFindings -Text (Read-GtText -Path $file.FullName) -Label $relative)
    foreach ($finding in $findings) {
        Add-Error "$relative baris $($finding.Line) cocok dengan pola secret '$($finding.Rule)'. Nilai tidak ditampilkan."
    }
}

if ($errors.Count -gt 0) {
    Write-Output "VALIDASI GAGAL: $($errors.Count) temuan"
    $errors | ForEach-Object { Write-Output ("- " + $_) }
    exit 1
}

Write-Output "VALIDASI LULUS: $($files.Count) dokumen Markdown, $($secretFiles.Count) file dipindai."
exit 0
