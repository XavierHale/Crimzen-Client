mode con: cols=140 lines=40
echo       ::::::::  
ping 0.0.0.0.0 >nul
echo     :+:    :+:  
ping 0.0.0.0.0 >nul
echo    +:+        
ping 0.0.0.0.0 >nul  
echo   +#+         
ping 0.0.0.0.0 >nul  
echo  +#+          
ping 0.0.0.0.0 >nul  
echo #+#    #+#    
ping 0.0.0.0.0 >nul  
echo ########
ping 0.0.0.0 >nul
FOR /F "tokens=* delims=" %%x in (ver.crm) DO set ver=%%x
title Crimzen Login
:login
set val=
set user=
set /p userset=Enter your username:
for /f "delims=" %%a in ('call ini.bat users.ini %userset% user') do (
    set val=%%a
    set user=%%a
)

if %val%==%userset% (
    echo Logging in as %val%
    echo Enter the password for %val%
    set /p pass=Enter Password:
    for /f "delims=" %%a in ('call ini.bat users.ini %userset% password') do (
    set val=%%a
)
 ) else (
    echo User does not exist
    goto :login
)
)
if %val%==%pass% (
    goto :logon
)
) else (
    echo Password incorrect
    goto :login
) 
:logon