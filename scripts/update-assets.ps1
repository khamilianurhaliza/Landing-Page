param(
    [Parameter(Mandatory=$true)]
    [string]$SourceDir,
    [switch]$Resize1200
)

$repoRoot = Split-Path -Parent $MyInvocation.MyCommand.Definition
$assetsDir = (Resolve-Path (Join-Path $repoRoot '..\assets')).ProviderPath

$mapping = @(
    'Lanidng-Page.png',
    'Pembuatan-Website.png',
    'Redesign-Website.png',
    'SEO-Website.png',
    'Detail-Proyek.png'
)

Write-Host "Source: $SourceDir"
Write-Host "Assets target: $assetsDir"

foreach ($name in $mapping) {
    $src = Join-Path $SourceDir $name
    $dst = Join-Path $assetsDir $name
    if (Test-Path $src) {
        Copy-Item -Path $src -Destination $dst -Force
        Write-Host "Copied: $name"
        if ($Resize1200) {
            $magick = Get-Command magick -ErrorAction SilentlyContinue
            if ($magick) {
                magick $dst -resize 1200x $dst
                Write-Host "Resized: $name to width 1200px"
            } else {
                Write-Warning "ImageMagick (magick) not found; skipping resize for $name"
            }
        }
    } else {
        Write-Warning "Source file not found: $src"
    }
}

Set-Location $repoRoot
git add "$assetsDir\*" README.md
$msg = "Update assets: replace images via update-assets.ps1"
git commit -m $msg 2>$null
if ($LASTEXITCODE -eq 0) { Write-Host "Committed changes." } else { Write-Host "No changes to commit or git commit failed." }

Write-Host "Done. Preview with: python -m http.server 8000 (run from project root)"
