@echo off
if exist CrimzenMain goto :boot
if not exist CrimzenMain goto :install
pause
:boot
mode con: cols=80 lines=20
title Crimzen Bootmanager 2.3
echo ^|---------------------^|
echo ^| Crimzen Bootmanager ^|
echo ^|---------------------^|
echo This window will display messages sent from Crimzen 
cd CrimzenMain
echo Looking for updates...
git pull https://github.com/XavierHale/CrimzenMain
FOR /F "tokens=* delims=" %%x in (ver.crm) DO echo Loading Version %%x
FOR /F "tokens=* delims=" %%x in (ver.crm) DO start CRIMZENV%%x.bat 
timeout 5 >nul
:listerror
cls
echo Pulling error data...
ping 0.0.0.0 >nul
echo %ERRORLEVEL%
type errmsg.crm
break>errmsg.crm
pause
goto :listerror
:install
mode con: cols=80 lines=20
title Crimzen Installer
echo ^|-------------------^|
echo ^| Crimzen Installer ^|
echo ^|-------------------^|
echo.
echo Welcome to Crimzen, the insanely overcomplicated menu system!
echo You are probably seeing this because this is your first time opening Crimzen.
echo For this installer/auto updater to work, you must have Git (https://git-scm.com/) installed.
echo Make sure this is installed, then press any key to continue.
pause >nul
echo Installing the latest version of Crimzen...
git clone https://github.com/XavierHale/CrimzenMain
echo All done! Proceding to launch Crimzen...
cls 
goto :boot