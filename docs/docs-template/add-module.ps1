<#
.SYNOPSIS
    Add a module's document set (master docs + version-wise catalogs under versions/) to a project's docs root and register it in the products index.

.EXAMPLE
    ./add-module.ps1 -Target "D:\MyNewProject\docs" -Name "Inventory" -ProductName "My New Project"
    ./add-module.ps1 -Target "D:\MyNewProject\docs" -Name "HR" -Prefix "HR"
#>
param(
    [Parameter(Mandatory = $true)]
    [string]$Target,            # docs root containing 00-products

    [Parameter(Mandatory = $true)]
    [string]$Name,              # module name, e.g. "Inventory" (short is better: filenames include it)

    [string]$Prefix = '',       # ID prefix, e.g. "INV". Default: first 3 alphanumeric chars of Name, uppercased.

    [string]$ProductName = '[Product Name]'
)

$ErrorActionPreference = 'Stop'
$products = Join-Path $Target '00-products'
$tplDir = Join-Path $PSScriptRoot 'module-template'

if (-not (Test-Path -LiteralPath $products)) {
    throw "Not a docs root: '$products' not found. Run init-docs.ps1 first."
}
if (-not (Test-Path -LiteralPath $tplDir)) {
    throw "Module templates not found next to this script: $tplDir"
}

if ($Prefix -eq '') {
    $clean = ($Name -replace '[^A-Za-z0-9]', '')
    if ($clean.Length -eq 0) { throw "Module name has no alphanumeric characters: '$Name'" }
    $Prefix = $clean.Substring(0, [Math]::Min(3, $clean.Length)).ToUpper()
}

$moduleDir = Join-Path $products $Name
if (Test-Path -LiteralPath $moduleDir) {
    throw "Module folder already exists: $moduleDir"
}
New-Item -ItemType Directory -Path $moduleDir -Force | Out-Null

# Copy templates recursively, preserving subfolder structure (e.g. versions/)
$date = Get-Date -Format 'yyyy-MM-dd'
Get-ChildItem -LiteralPath $tplDir -Recurse -Filter *.tpl | ForEach-Object {
    $rel = $_.FullName.Substring($tplDir.Length).TrimStart('\', '/')
    $relDir = Split-Path -Parent $rel
    $leaf = (Split-Path -Leaf $rel) -replace '^MODULE-', "$Name-"
    $outRel = if ($relDir) { Join-Path $relDir ($leaf -replace '\.tpl$', '') } else { $leaf -replace '\.tpl$', '' }
    $outPath = Join-Path $moduleDir $outRel
    $outDir = Split-Path -Parent $outPath
    if (-not (Test-Path -LiteralPath $outDir)) {
        New-Item -ItemType Directory -Path $outDir -Force | Out-Null
    }
    $content = Get-Content -LiteralPath $_.FullName -Raw -Encoding UTF8
    $content = $content.Replace('{{MODULE}}', $Name).Replace('{{PREFIX}}', $Prefix).Replace('{{PRODUCT}}', $ProductName).Replace('{{DATE}}', $date)
    Set-Content -LiteralPath $outPath -Value $content -Encoding UTF8
}

# Register the module in 00-products/README.md (marker-based, idempotent)
$readmePath = Join-Path $products 'README.md'
if (Test-Path -LiteralPath $readmePath) {
    $rm = Get-Content -LiteralPath $readmePath -Raw -Encoding UTF8
    if ($rm -match '<!-- MODULES -->') {
        $row = "| [$Name](./$Name/README.md) | Placeholder - docs pending |`r`n"
        $rm = $rm.Replace('<!-- MODULES -->', "$row<!-- MODULES -->")
        Set-Content -LiteralPath $readmePath -Value $rm -Encoding UTF8
    }
}

Write-Host "Module '$Name' (prefix '$Prefix') created at: $moduleDir"
Write-Host "Files:"
Get-ChildItem -LiteralPath $moduleDir -Recurse -File | ForEach-Object {
    Write-Host "  - $($_.FullName.Substring($moduleDir.Length + 1))"
}
