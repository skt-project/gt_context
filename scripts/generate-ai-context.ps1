<#
.SYNOPSIS
  Menyusun ai/generated/context-digest.md dari frontmatter dokumen sumber.
.PARAMETER Check
  Membandingkan hasil generate dengan file yang sudah ada, tanpa menulis.
#>
[CmdletBinding()]
param(
    [string]$Root,
    [switch]$Check
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"
Import-Module (Join-Path $PSScriptRoot "lib\GtContext.psm1") -Force

if ([string]::IsNullOrWhiteSpace($Root)) {
    $Root = Get-GtRoot
}
$Root = (Resolve-Path -LiteralPath $Root).Path

$includeRoots = @(
    "context",
    "projects",
    "systems",
    "knowledge",
    "operations",
    "docs\onboarding",
    "docs\architecture",
    "docs\audits",
    "docs\templates",
    "ai\adapters"
)
$extraFiles = @(
    "README.md",
    "AGENTS.md",
    "AI_CONTEXT.md",
    "SECURITY.md",
    "ai\universal-instructions.md"
)

$items = New-Object System.Collections.Generic.List[object]

function Add-ItemFromFile([string]$Path) {
    if (-not (Test-Path -LiteralPath $Path)) { return }
    $relative = Get-GtRelativePath -Root $Root -Path $Path
    if ($relative -match '(^|/)templates/') { return }
    if ($relative -eq "ai/generated/context-digest.md") { return }
    $meta = Get-GtFrontmatter -Raw (Read-GtText -Path $Path)
    if ($null -eq $meta) { return }
    if ($meta.ContainsKey("doc_type") -and $meta["doc_type"] -eq "template") { return }
    $script:items.Add([pscustomobject]@{
        Path         = $relative
        Title        = [string]$meta["title"]
        Status       = [string]$meta["status"]
        Confidence   = [string]$meta["confidence"]
        Summary      = [string]$meta["summary"]
        LastVerified = [string]$meta["last_verified"]
        NextReview   = [string]$meta["next_review"]
    }) | Out-Null
}

foreach ($folder in $includeRoots) {
    $full = Join-Path $Root $folder
    if (-not (Test-Path -LiteralPath $full)) { continue }
    Get-ChildItem -LiteralPath $full -Recurse -File -Filter *.md | ForEach-Object {
        Add-ItemFromFile $_.FullName
    }
}
foreach ($extra in $extraFiles) {
    Add-ItemFromFile (Join-Path $Root $extra)
}

$sorted = @($items | Sort-Object Path, Title)
$lastVerified = "UNKNOWN"
$nextReview = "UNKNOWN"
if ($sorted.Count -gt 0) {
    $lastVerified = @($sorted | Where-Object { $_.LastVerified -match '^\d{4}-\d{2}-\d{2}$' } | Sort-Object LastVerified -Descending | Select-Object -First 1).LastVerified
    $nextReview = @($sorted | Where-Object { $_.NextReview -match '^\d{4}-\d{2}-\d{2}$' } | Sort-Object NextReview | Select-Object -First 1).NextReview
    if ([string]::IsNullOrWhiteSpace($lastVerified)) { $lastVerified = "UNKNOWN" }
    if ([string]::IsNullOrWhiteSpace($nextReview)) { $nextReview = "UNKNOWN" }
}

function Escape-Cell([string]$Value) {
    if ([string]::IsNullOrWhiteSpace($Value)) { return "" }
    return (($Value -replace '\|', '/') -replace '\r|\n', ' ')
}

$lines = New-Object System.Collections.Generic.List[string]
$lines.Add("---")
$lines.Add('title: "Context digest"')
$lines.Add("doc_type: generated")
$lines.Add("status: active")
$lines.Add("confidence: CONFIRMED")
$lines.Add("owner: repository-maintainer")
$lines.Add('source: "scripts/generate-ai-context.ps1"')
$lines.Add("last_verified: $lastVerified")
$lines.Add("next_review: $nextReview")
$lines.Add("sensitivity: internal")
$lines.Add('summary: "Ringkasan frontmatter dokumen sumber. File ini dihasilkan ulang oleh script."')
$lines.Add('generated: "true"')
$lines.Add("---")
$lines.Add("")
$lines.Add("<!-- GENERATED FILE. Jangan mengedit tangan. Sumber kebenaran ada pada dokumen yang ditautkan. -->")
$lines.Add("")
$lines.Add("# Context digest")
$lines.Add("")
$lines.Add("File ini adalah indeks ringkas. Ia tidak menyalin isi repository. Perbarui dengan ``scripts/generate-ai-context.ps1`` setelah dokumen sumber berubah.")
$lines.Add("")
$lines.Add("| Dokumen | Judul | Status | Kepercayaan | Ringkasan |")
$lines.Add("| --- | --- | --- | --- | --- |")
foreach ($item in $sorted) {
    $href = "../../" + $item.Path
    $lines.Add(("| [{0}]({1}) | {2} | {3} | {4} | {5} |" -f $item.Path, $href, (Escape-Cell $item.Title), (Escape-Cell $item.Status), (Escape-Cell $item.Confidence), (Escape-Cell $item.Summary)))
}
$lines.Add("")

$content = ($lines -join "`n") + "`n"
$destination = Join-Path $Root "ai\generated\context-digest.md"

if ($Check) {
    if (-not (Test-Path -LiteralPath $destination)) {
        Write-Output "GENERATED CHECK GAGAL: ai/generated/context-digest.md belum ada."
        exit 1
    }
    $current = ConvertTo-GtLf (Read-GtText -Path $destination)
    $expected = ConvertTo-GtLf $content
    if ($current.TrimEnd("`n") -ne $expected.TrimEnd("`n")) {
        Write-Output "GENERATED CHECK GAGAL: context-digest.md tidak sama dengan hasil generate."
        exit 1
    }
    Write-Output "GENERATED CHECK LULUS."
    exit 0
}

Write-GtText -Path $destination -Content $content
Write-Output "Menulis ai/generated/context-digest.md ($($sorted.Count) dokumen)."
exit 0
