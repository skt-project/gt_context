Set-StrictMode -Version Latest

function Get-GtRoot {
    $here = $PSScriptRoot
    if ([string]::IsNullOrWhiteSpace($here)) {
        $here = (Get-Location).Path
    }
    return (Resolve-Path (Join-Path $here "..\..")).Path
}

function ConvertTo-GtLf([string]$Text) {
    if ($null -eq $Text) { return "" }
    return (($Text -replace "`r`n", "`n") -replace "`r", "`n")
}

function Write-GtText {
    param(
        [Parameter(Mandatory = $true)][string]$Path,
        [Parameter(Mandatory = $true)][string]$Content
    )
    $parent = Split-Path -Parent $Path
    if (-not [string]::IsNullOrWhiteSpace($parent) -and -not (Test-Path -LiteralPath $parent)) {
        New-Item -ItemType Directory -Path $parent -Force | Out-Null
    }
    $utf8 = New-Object System.Text.UTF8Encoding $false
    $normalized = (ConvertTo-GtLf $Content).TrimEnd("`n") + "`n"
    [System.IO.File]::WriteAllText($Path, $normalized, $utf8)
}

function Read-GtText {
    param([Parameter(Mandatory = $true)][string]$Path)
    return [System.IO.File]::ReadAllText($Path)
}

function Get-GtFrontmatter {
    param([Parameter(Mandatory = $true)][string]$Raw)
    $text = ConvertTo-GtLf $Raw
    $match = [regex]::Match($text, "(?s)\A---\n(.*?)\n---\n")
    if (-not $match.Success) { return $null }
    $map = @{}
    foreach ($line in ($match.Groups[1].Value -split "\n")) {
        if ($line -match '^\s*$' -or $line -match '^\s*#') { continue }
        $field = [regex]::Match($line, '^([A-Za-z0-9_]+):\s*(.*)$')
        if (-not $field.Success) { continue }
        $value = $field.Groups[2].Value.Trim()
        if ($value.Length -ge 2 -and $value.StartsWith('"') -and $value.EndsWith('"')) {
            $value = $value.Substring(1, $value.Length - 2)
        }
        $map[$field.Groups[1].Value] = $value
    }
    return $map
}

function Get-GtSecretRules {
    $pemBegin = "-----" + "BEGIN "
    $pemEnd = "PRIVATE KEY" + "-----"
    return @(
        @{ Name = "private-key"; Pattern = ($pemBegin + "(?:RSA |OPENSSH |EC |DSA )?" + $pemEnd) },
        @{ Name = "aws-access-key"; Pattern = "\bAKIA[0-9A-Z]{16}\b" },
        @{ Name = "github-token"; Pattern = "\bgh[pousr]_[A-Za-z0-9]{20,}\b" },
        @{ Name = "github-fine-grained"; Pattern = "\bgithub_pat_[A-Za-z0-9_]{20,}\b" },
        @{ Name = "slack-token"; Pattern = "\bxox[baprs]-[A-Za-z0-9-]{10,}\b" },
        @{ Name = "google-api-key"; Pattern = "\bAIza[0-9A-Za-z\-_]{20,}\b" },
        @{ Name = "openai-like-key"; Pattern = "\bsk-[A-Za-z0-9]{20,}\b" },
        @{ Name = "bearer-token"; Pattern = "(?i)\bBearer\s+[A-Za-z0-9\-\._~\+/]{20,}={0,2}\b" },
        @{ Name = "credential-assignment"; Pattern = "(?i)\b(api[_-]?key|secret|password|passwd|token|credential)\b\s*[:=]\s*['\`"]?[A-Za-z0-9_\-\.]{12,}" }
    )
}

function Get-GtSecretFindings {
    param(
        [Parameter(Mandatory = $true)][AllowEmptyString()][string]$Text,
        [Parameter(Mandatory = $true)][string]$Label
    )
    $findings = New-Object System.Collections.Generic.List[object]
    $normalized = ConvertTo-GtLf $Text
    $lines = $normalized -split "\n"
    $rules = Get-GtSecretRules
    for ($i = 0; $i -lt $lines.Length; $i++) {
        foreach ($rule in $rules) {
            if ([regex]::IsMatch($lines[$i], $rule.Pattern)) {
                $findings.Add([pscustomobject]@{
                    Label = $Label
                    Line  = $i + 1
                    Rule  = $rule.Name
                }) | Out-Null
            }
        }
    }
    return $findings
}

function Invoke-GtScannerSelfTest {
    $aws = "AKIA" + ("Z" * 16)
    $github = "ghp_" + ("a" * 20)
    $privateKey = "-----BEGIN " + "PRIVATE KEY-----"
    $positive = Get-GtSecretFindings -Text ("sample " + $aws + "`n" + $github + "`n" + $privateKey) -Label "self-test"
    $rules = @($positive | Select-Object -ExpandProperty Rule -Unique)
    foreach ($expected in @("aws-access-key", "github-token", "private-key")) {
        if ($rules -notcontains $expected) {
            throw "Self-test gagal mendeteksi pola $expected."
        }
    }
    $clean = @(Get-GtSecretFindings -Text "Ini kalimat biasa. last_verified: 2026-10-14. Token tidak disimpan di dokumen." -Label "self-test-clean")
    if ($clean.Count -gt 0) {
        throw "Self-test menghasilkan temuan palsu: $($clean[0].Rule)"
    }
}

function Get-GtRelativePath {
    param(
        [Parameter(Mandatory = $true)][string]$Root,
        [Parameter(Mandatory = $true)][string]$Path
    )
    $rootFull = [System.IO.Path]::GetFullPath($Root)
    if (-not $rootFull.EndsWith([System.IO.Path]::DirectorySeparatorChar)) {
        $rootFull = $rootFull + [System.IO.Path]::DirectorySeparatorChar
    }
    $full = [System.IO.Path]::GetFullPath($Path)
    $uriRoot = New-Object System.Uri ($rootFull)
    $uriPath = New-Object System.Uri ($full)
    return [System.Uri]::UnescapeDataString($uriRoot.MakeRelativeUri($uriPath).ToString()).Replace('\', '/')
}

Export-ModuleMember -Function @(
    'Get-GtRoot',
    'ConvertTo-GtLf',
    'Write-GtText',
    'Read-GtText',
    'Get-GtFrontmatter',
    'Get-GtSecretFindings',
    'Invoke-GtScannerSelfTest',
    'Get-GtRelativePath'
)
