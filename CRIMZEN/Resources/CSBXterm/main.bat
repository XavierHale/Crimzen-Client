@echo off
set %mypath%=%cd%
cls
echo Booting into CSBXTerm...
timeout 1 >nul
echo Loaded.
timeout 1 >nul
cls
echo  CSBXTerm
echo  (C) 2021 CSBX inc.
echo  If you paid for this, you got scammed!
echo  This is freeware, and is included in CRIMZEN at:
echo  https://xavierhale.github.io/Crimzen-Client/
echo.
echo.
:cmdline
echo Current Directory is %mypath%
set /p cmdline=^>
call %cmdline%
goto :cmdline