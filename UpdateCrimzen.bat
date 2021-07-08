@echo off
:top
ping 0.0.0.0 >nul
git pull https://github.com/XavierHale/Crimzen-Client
if %ERRORLEVEL%=0 (
cd \Crimzen-Client
type Ver
) else (
    echo Update unsuccesful
    if %ERRORLEVEL%=128 (
        echo Make sure this file is in the same directory as your CRIMZEN folder
    ) else (
        echo Unknown error. Code=%ERRORLEVEL%
    )
)

pause
goto :top