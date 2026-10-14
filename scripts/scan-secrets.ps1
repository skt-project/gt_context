<#
.SYNOPSIS
  Memindai pola secret. Nilai yang cocok tidak pernah dicetak.
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

Invoke-GtScannerSelfTest
Write-Output "Self-test pola secret lulus."

$files = @(Get-ChildItem -LiteralPath $Root -Recurse -File | Where-Object {
    $_.FullName -notmatch '\\(\.git|node_modules)\\' -and
    $_.Length -lt 1048576 -and
    $_.Extension -match '^\.(md|ps1|psm1|yml|yaml|json|jsonc|toml|txt|mdc)$'
})

$findings = New-Object System.Collections.Generic.List[object]
foreach ($file in $files) {
    $relative = Get-GtRelativePath -Root $Root -Path $file.FullName
    foreach ($finding in @(Get-GtSecretFindings -Text (Read-GtText -Path $file.FullName) -Label $relative)) {
        $findings.Add($finding) | Out-Null
    }
}

if ($findings.Count -gt 0) {
    Write-Output "SECRET SCAN GAGAL: $($findings.Count) temuan. Nilai tidak ditampilkan."
    foreach ($finding in $findings) {
        Write-Output ("- {0} baris {1} pola {2}" -f $finding.Label, $finding.Line, $finding.Rule)
    }
    exit 1
}

Write-Output "SECRET SCAN LULUS: $($files.Count) file."
exit 0
