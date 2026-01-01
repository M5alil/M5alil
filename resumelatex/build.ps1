param([string]$TexFile = 'mohamed-khalil.tex')
$ErrorActionPreference = 'Stop'
$here = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $here

$timestamp = Get-Date -Format 'yyyyMMdd'
$base = 'mohamed-khalil, software engineer, '
$outPdf = "$base$timestamp.pdf"

# Build twice for references
pdflatex.exe -interaction=nonstopmode $TexFile | Out-Null
pdflatex.exe -interaction=nonstopmode $TexFile | Out-Null

if (Test-Path 'mohamed-khalil.pdf') {
    if (Test-Path $outPdf) { Remove-Item -Force $outPdf }
    Rename-Item -Force 'mohamed-khalil.pdf' $outPdf
}

Write-Host "Built: $outPdf"