@echo off
mode con: cols=32 lines=15
title Crimzen Bootmanager 1.0
echo ^|---------------------^|
echo ^| Crimzen Bootmanager ^|
echo ^|---------------------^|
echo This window will display messages sent from the Crimzen 
cd CRIMZEN 
FOR /F "tokens=* delims=" %%x in (ver.crm) DO echo Loading Version %%x
start CRIMZENV3.1.3.bat 
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