<#
.SYNOPSIS
  Menambahkan butir di bawah bagian Unreleased pada CHANGELOG.md.
#>
[CmdletBinding()]
param(
    [string]$Root,
    [Parameter(Mandatory = $true)][string]$Note,
    [switch]$DryRun
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"
Import-Module (Join-Path $PSScriptRoot "lib\GtContext.psm1") -Force

if ([string]::IsNullOrWhiteSpace($Root)) {
    $Root = Get-GtRoot
}
$Root = (Resolve-Path -LiteralPath $Root).Path
$path = Join-Path $Root "CHANGELOG.md"
$text = ConvertTo-GtLf (Read-GtText -Path $path)
$bullet = "- $Note"
if ($text -notmatch '(?m)^## \[Unreleased\]\s*$') {
    throw "CHANGELOG.md tidak memiliki bagian ## [Unreleased]."
}
if ($text.Contains($bullet)) {
    Write-Output "Butir sudah ada."
    exit 0
}
$updated = [regex]::Replace($text, '(?m)^(## \[Unreleased\]\s*)$', ('$1' + "`n" + $bullet), 1)
if ($DryRun) {
    Write-Output $bullet
    exit 0
}
Write-GtText -Path $path -Content $updated
Write-Output "CHANGELOG diperbarui."
exit 0
