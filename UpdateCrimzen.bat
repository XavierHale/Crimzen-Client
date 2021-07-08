@echo off
:top
ping 0.0.0.0 >nul
git pull https://github.com/XavierHale/Crimzen-Client
cd \Crimzen-Client
type Ver
pause
goto :top