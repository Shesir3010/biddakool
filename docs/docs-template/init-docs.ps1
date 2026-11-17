<#
.SYNOPSIS
    Initialize the docs folder of a new project from the docs-template signature skeleton.

.EXAMPLE
    ./init-docs.ps1 -Target "D:\MyNewProject\docs" -ProjectName "My New Project"
#>
param(
    [Parameter(Mandatory = $true)]
    [string]$Target,

    [string]$ProjectName = '[Project Name]'
)

$ErrorActionPreference = 'Stop'
$skeleton = Join-Path $PSScriptRoot 'skeleton'

if (-not (Test-Path -LiteralPath $skeleton)) {
    throw "Skeleton folder not found next to this script: $skeleton"
}

if (Test-Path -LiteralPath $Target) {
    $existing = Get-ChildItem -LiteralPath $Target -Force
    if ($existing.Count -gt 0) {
        throw "Target is not empty: $Target. Choose an empty (or non-existent) folder."
    }
}
else {
    New-Item -ItemType Directory -Path $Target -Force | Out-Null
}

$date = Get-Date -Format 'yyyy-MM-dd'
$count = 0

Get-ChildItem -LiteralPath $skeleton -Recurse -File | ForEach-Object {
    $rel = $_.FullName.Substring($skeleton.Length).TrimStart('\')
    $dest = Join-Path $Target $rel
    $destDir = Split-Path -Parent $dest
    if (-not (Test-Path -LiteralPath $destDir)) {
        New-Item -ItemType Directory -Path $destDir -Force | Out-Null
    }
    $content = Get-Content -LiteralPath $_.FullName -Raw -Encoding UTF8
    $content = $content.Replace('{{PROJECT}}', $ProjectName).Replace('{{DATE}}', $date)
    Set-Content -LiteralPath $dest -Value $content -Encoding UTF8
    $count++
}

Write-Host "Docs skeleton initialized at: $Target ($count files)"
Write-Host "Next: ./add-module.ps1 -Target `"$Target`" -Name <ModuleName>"
