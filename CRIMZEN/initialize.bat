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
mode con: cols=140 lines=40
FOR /F "tokens=* delims=" %%x in (ver.crm) DO set ver=%%x
:login
set /p userset=Enter your username:
for /f "delims=" %%a in ('call ini.cmd users.ini %userset% user') do (
    set val=%%a
    set user=%%a
)
if %val%=%userset% (
    set /p pass=Enter Password:
    for /f "delims=" %%a in ('call ini.cmd users.ini %userset% password') do (
    set val=%%a
)
if %val%=%pass% (
    goto :logon
)
) else (
    echo User does not exist
    goto :login
) 
:logon