@echo off
setlocal enabledelayedexpansion

set ASSETS_DIR=assets

for /r "%ASSETS_DIR%" %%F in (*.jpg *.jpeg *.png *.bmp *.tiff *.tif *.gif) do (
	ffmpeg -i "%%F" -q:v 80 "%%~dpF%%~nF.webp" -y -loglevel warning
	del "%%F"
	echo Replaced: %%~nxF  ^>  %%~nF.webp
)

echo.
echo Done.
pause
