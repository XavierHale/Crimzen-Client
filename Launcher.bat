@echo off
title Crimzen Bootmanager 1.0
echo Crimzen Bootmanager 
echo This window will display messages sent from the Crimzen 
pause
cd CRIMZEN 
FOR /F "tokens=* delims=" %%x in (ver.crm) DO echo Loading Version %%x
start CRIMZENV3.1.2.bat 
:listerror
echo %ERRORLEVEL%
type errmsg.crm
break>errmsg.crm
pause
goto :listerror