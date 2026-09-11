Write-Host "Building resume with Tectonic..." -ForegroundColor Cyan
tectonic main.tex
if ($LASTEXITCODE -eq 0) {
    Write-Host "Build successful! Created main.pdf" -ForegroundColor Green
} else {
    Write-Host "Build failed with exit code $LASTEXITCODE" -ForegroundColor Red
}
