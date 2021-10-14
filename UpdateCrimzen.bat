@echo off
:top
ping 0.0.0.0 >nul
echo Crimzen Updater
echo.
echo Did you download Crimzen from 1.GitHub or use a 2.git pull? (If the answer is Github, select it this time. Next time, say git pull
echo P.S.:This feature reqires Git to be installed
set /p choice=Enter option:
if %choice%==1 goto :github
if %choice%==2 goto :gitpull
:gitpull
git pull https://github.com/XavierHale/Crimzen-Client
) else (
    echo Update unsuccesful
    if %ERRORLEVEL%=128 (
        echo Make sure this file is in the same directory as your Crimzen-Client-main folder
    ) else (
        echo Unknown error. Code=%ERRORLEVEL%
    )
)

pause
goto :top
:github
git clone https://github.com/XavierHale/Crimzen-Client
echo Remember, next time chose git pull
pause
goto :top