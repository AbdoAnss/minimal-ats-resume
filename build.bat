@echo off
echo Building resume with Tectonic...
tectonic main.tex
if %ERRORLEVEL% equ 0 (
    echo Build successful! Created main.pdf
) else (
    echo Build failed with error %ERRORLEVEL%
)
