@echo off
:setup
color 4
mode con: cols=140 lines=40
set ver=3.1.2
title Crimzen Version %ver%
echo Looking for user
powershell -Command "& {Add-Type -AssemblyName Microsoft.VisualBasic; [Microsoft.VisualBasic.Interaction]::InputBox('Enter your name:', 'Crimzen')}" > %TEMP%\out.tmp
set /p OUT=<out.tmp
cls
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
cls
echo       ::::::::  
echo     :+:    :+:  
echo    +:+          
echo   +#+          
echo  +#+           
echo #+#    #+#    
echo ########
echo [----------]0%
ping 0.0.0.0 >nul
cls
echo       ::::::::  
echo     :+:    :+:  
echo    +:+          
echo   +#+          
echo  +#+           
echo #+#    #+#    
echo ########
echo [#=--------]18%
ping 0.0.0.0 >nul
cls
echo       ::::::::  
echo     :+:    :+:  
echo    +:+          
echo   +#+          
echo  +#+           
echo #+#    #+#    
echo ########
echo [###-------]30%
ping 0.0.0.0 >nul
cls
echo       ::::::::  
echo     :+:    :+:  
echo    +:+          
echo   +#+          
echo  +#+           
echo #+#    #+#    
echo ########
echo [####=-----]48%
ping 0.0.0.0 >nul
cls
echo       ::::::::  
echo     :+:    :+:  
echo    +:+          
echo   +#+          
echo  +#+           
echo #+#    #+#    
echo ########
echo [#####=----]59%
cd ..
ping 0.0.0.0 >nul
cls
echo       ::::::::  
echo     :+:    :+:  
echo    +:+          
echo   +#+          
echo  +#+           
echo #+#    #+#    
echo ########
echo [#######---] 70%
ping 0.0.0.0 >nul
cls
echo       ::::::::  
echo     :+:    :+:  
echo    +:+          
echo   +#+          
echo  +#+           
echo #+#    #+#    
echo ########
echo [########=-]88%
ping 0.0.0.0 >nul
cls
echo       ::::::::  
echo     :+:    :+:  
echo    +:+          
echo   +#+          
echo  +#+           
echo #+#    #+#    
echo ########
echo [##########]100%
timeout 1 /nobreak >nul
echo Succesfuly loaded, welcome to Crimzen!
echo Copyright 2021 CSBX inc.
echo IF you paid for this, you got scammed! This is freeware, and can be downloaded at
echo https://github.com/XavierHale/Crimzen-Client
pause
cls
echo l-----------------------------------------------------------------------------------------------------------------------------------------l
ping 0.0.0.0.0 >nul  
echo l       ::::::::       :::::::::       :::::::::::         :::   :::       :::::::::       ::::::::::       ::::    :::                   l 
ping 0.0.0.0.0 >nul  
echo l     :+:    :+:      :+:    :+:          :+:            :+:+: :+:+:           :+:        :+:              :+:+:   :+:                    l
ping 0.0.0.0.0 >nul  
echo l    +:+             +:+    +:+          +:+           +:+ +:+:+ +:+         +:+         +:+              :+:+:+  +:+                     l
ping 0.0.0.0.0 >nul  
echo l   +#+             +#++:++#:           +#+           +#+  +:+  +#+        +#+          +#++:++#         +#+ +:+ +#+                      l
ping 0.0.0.0.0 >nul  
echo l  +#+             +#+    +#+          +#+           +#+       +#+       +#+           +#+              +#+  +#+#+#                       l
ping 0.0.0.0.0 >nul  
echo l #+#    #+#      #+#    #+#          #+#           #+#       #+#      #+#            #+#              #+#   #+#+#                        l
ping 0.0.0.0.0 >nul  
echo l ########       ###    ###      ###########       ###       ###     #########       ##########       ###    ####                         l
ping 0.0.0.0.0 >nul  
echo l Copyright 2021                                                                                                                          l
ping 0.0.0.0.0 >nul  
echo l V3.0 by CSBX inc.                                                                                                                       l
ping 0.0.0.0.0 >nul  
echo l-----------------------------------------------------------------------------------------------------------------------------------------l
if %OUT% ==Xavier (echo l Hello, Xavier, Presedent of CSBX!
color B
) else (echo l Hello %OUT%, what would you like to do?)
echo l     l-------Terminals------l
echo l     l (1) CMD              l
echo l     l (2) Powershell       l
echo l     l (?) CSBXterm         l         l---------------Updating-------------------l
echo l     l----------------------l         l To update, run the UpdateCrimzen program l
echo l                                      l that you set up in README.txt            l
echo l     l-------Utilites-------l         l (Note: This is a bit buggy and may not   l
echo l     l (3) Notepad          l         l work right)                              l
echo l     l (4) Autoclicker      l         l------------------------------------------l
echo l     l (5) QDoS             l
echo l     l (6) Iexpress Wizard  l
echo l     l----------------------l
echo l
echo l     l-------Customize------l
echo l     l (7) Change color     l
echo l     l (8) Online Shop      l
echo l     l----------------------l
echo l
echo l     l---------Games--------l
echo l     l (9) More Games       l
echo l     l----------------------l
echo l
echo l
echo l
echo l
echo l-----------------------------------------------------------------------------------------------------------------------------------------l
set /p homemenu=What would you like to do?
if %homemenu%==1 start cmd.exe
if %homemenu%==2 start powershell.exe
if %homemenu%==3 Notepad.exe
if %homemenu%==4 goto :autoclick
if %homemenu%==5 goto :QDOS
if %homemenu%==6 iexpress.exe
if %homemenu%==7 goto :color
if %homemenu%==8 goto :shop
if %homemenu%==9 goto :morgame
goto :choice
:autoclick
cd Resources\applets
start AutoClicker.exe
timeout 1 /nobreak >nul
goto :choice
:QDoS
cd Resources\applets
start QDOS.bat
timeout 1 /nobreak >nul
goto :choice
:vib
cd Resources\applets
start Vib
echo Launched Vibrant Venture
timeout 1 /nobreak >nul
goto :choice
:express
start iexpress.exe
echo Iexpress wizard started
timeout 1 /nobreak >nul
goto :choice
:extend
cd C:\CRIMZEN\
echo     dBP     dBBBBP  dBBBBBb      dBBBBb             dBBBP  `Bb  .BP  dBBBBBBP     dBBBP      dBBBBb  dBBBBBBP     dBP     dBBBBP     dBBBBb
echo            dB'.BP        BB         dB'                        .BP                              dBP                      dB'.BP         dBP
echo   dBP     dB'.BP     dBP BB    dBP dB'            dBBP       dBBK     dBP       dBBP       dBP dBP    dBP       dBP     dB'.BP     dBP dBP 
echo  dBP     dB'.BP     dBP  BB   dBP dB'            dBP        dB'      dBP       dBP        dBP dBP    dBP       dBP     dB'.BP     dBP dBP  
echo dBBBBP  dBBBBP     dBBBBBBB  dBBBBB'            dBBBBP     dB' dBP  dBP       dBBBBP     dBP dBP    dBP       dBP     dBBBBP     dBP dBP                                                                                                                                             
echo Go to your C:\CRIMZEN\extention and put an extention in there. Make sure you only have one in at once or it will confuse
echo the system because it will attempt to load things that will try to edit something at the same time.
timeout 30
echo Loading the extention...
dir /b /a-d Resources\
echo Crimzen folder located,
set /p extendname=Enter the name above (Extension Name):
timeout 20
start %extendname%
goto :choice
:help
echo               - Help Menu -
echo Crimzen is a hub for computer applications that are usualy hard to get to.
echo Home Menu:
echo To start a program, type the number in the parnthises next to it. (Ex. Type 0 for this menu)
echo Extensions:
echo To load an extension, place it in C:\CRIMZEN (The CRIMZEN folder in your C: drive) and enter the
echo name of the extension.
echo Press a key to continue...
timeout 280  >nul
goto :choice
:color
echo 0	=	Black	 	8	=	Gray
echo 1	=	Blue	 	9	=	Light Blue
echo 2	=	Green	 	A	=	Light Green
echo 3	=	Aqua	 	B	=	Light Aqua
echo 4	=	Red	 	    C	=	Light Red
echo 5	=	Purple	 	D	=	Light Purple
echo 6	=	Yellow	 	E	=	Light Yellow
echo 7	=	White	 	F	=	Bright White
set /p color=Select a color form the table above. First digit is background, seccond is text. (Ex, for a white background and blue text, enter 71)
color %color%
goto :choice
:morgame
cls
echo l-----------------------------------------------------------------------------------------------------------------------------------------l
ping 0.0.0.0.0 >nul  
echo l       ::::::::       :::::::::       :::::::::::         :::   :::       :::::::::       ::::::::::       ::::    :::                   l 
ping 0.0.0.0.0 >nul  
echo l     :+:    :+:      :+:    :+:          :+:            :+:+: :+:+:           :+:        :+:              :+:+:   :+:                    l
ping 0.0.0.0.0 >nul  
echo l    +:+             +:+    +:+          +:+           +:+ +:+:+ +:+         +:+         +:+              :+:+:+  +:+                     l
ping 0.0.0.0.0 >nul  
echo l   +#+             +#++:++#:           +#+           +#+  +:+  +#+        +#+          +#++:++#         +#+ +:+ +#+                      l
ping 0.0.0.0.0 >nul  
echo l  +#+             +#+    +#+          +#+           +#+       +#+       +#+           +#+              +#+  +#+#+#                       l
ping 0.0.0.0.0 >nul  
echo l #+#    #+#      #+#    #+#          #+#           #+#       #+#      #+#            #+#              #+#   #+#+#                        l
ping 0.0.0.0.0 >nul  
echo l ########       ###    ###      ###########       ###       ###     #########       ##########       ###    ####                         l
ping 0.0.0.0.0 >nul                       
echo l Copyright 2021                                                                                                                          l
ping 0.0.0.0.0 >nul  
echo l V3.0 by CSBX inc.                                                                                                                       l
ping 0.0.0.0.0 >nul  
echo l-----------------------------------------------------------------------------------------------------------------------------------------l
echo l
echo l     l---------More Games supported by CRIMZEN-------------l
echo l     l (1) Snake                                           l
echo l     l (2) Flappy Bird                                     l
echo l     l (3) War!                                            l
echo l     l (4) Dragon Fight                                    l
echo l     l (5) Back to Main Menu                               l
echo l     l-----------------------------------------------------l
echo l     
echo l     
echo l     
echo l     
echo l     
echo l     
echo l
echo l     
echo l     
echo l     
echo l     
echo l
echo l    
echo l     
echo l     
echo l
echo l
echo l
echo l
echo l-----------------------------------------------------------------------------------------------------------------------------------------l
set /p gamemenu=What game do you want to load?
cd Resources\applets\BatchGames
if %gamemenu% ==1 (
  start snake.bat
)
else (
  goto :1
)
:1
if %gamemenu% ==2 (
  start flap
)
else (
  goto :2
)
:2
if %gamemenu% ==3 (
  start war.bat
)
else (
  goto :3
)
:3
if %gamemenu% ==4 (
  start drag.bat
)
else (
  if %gamemenu% ==5
  (goto :choice
  ) else (
    echo Invalid Choice
    pause
  )
)
goto :morgame
:shop
cls
Echo Loading shop
timeout 1 /nobreak >nul
cls
echo Loading shop.
timeout 1 /nobreak >nul
cls 
echo Loading shop..
timeout 1 /nobreak >nul
cls
echo Loading shop...
timeout 1 /nobreak >nul
echo Loaded!
timeout 2 /nobreak >nul
cls
:loadedshop
echo l-----------------------------------------------------------------------------------------------------------------------------------------l
ping 0.0.0.0.0 >nul  
echo l       ::::::::       :::::::::       :::::::::::         :::   :::       :::::::::       ::::::::::       ::::    :::                   l 
ping 0.0.0.0.0 >nul  
echo l     :+:    :+:      :+:    :+:          :+:            :+:+: :+:+:           :+:        :+:              :+:+:   :+:                    l
ping 0.0.0.0.0 >nul  
echo l    +:+             +:+    +:+          +:+           +:+ +:+:+ +:+         +:+         +:+              :+:+:+  +:+                     l
ping 0.0.0.0.0 >nul  
echo l   +#+             +#++:++#:           +#+           +#+  +:+  +#+        +#+          +#++:++#         +#+ +:+ +#+                      l
ping 0.0.0.0.0 >nul  
echo l  +#+             +#+    +#+          +#+           +#+       +#+       +#+           +#+              +#+  +#+#+#                       l
ping 0.0.0.0.0 >nul  
echo l #+#    #+#      #+#    #+#          #+#           #+#       #+#      #+#            #+#              #+#   #+#+#                        l
ping 0.0.0.0.0 >nul  
echo l ########       ###    ###      ###########       ###       ###     #########       ##########       ###    ####                         l
ping 0.0.0.0.0 >nul                       
echo l Copyright 2021                                                                                                                          l
ping 0.0.0.0.0 >nul  
echo l V3.0 by CSBX inc.                                                                                                                       l
ping 0.0.0.0.0 >nul  
echo l-----------------------------------------------------------------------------------------------------------------------------------------l
echo l
echo l       l---------Welcome!---------l
echo l       l Use just like the home   l
echo l       l menu, exept you can type l
echo l       l 'e' after the number to  l
echo l       l get info about that      l
echo l       l peice of software        l
echo l       l--------------------------l
echo l     
echo l       l--------------------------l
echo l       l (1) Vibrant Venture      l
echo l       l (2) Visual Studio code   l
echo l     
echo l     
echo l
echo l     
echo l     
echo l     
echo l     
echo l
echo l    
echo l     
echo l     
echo l
echo l
echo l
echo l
echo l-----------------------------------------------------------------------------------------------------------------------------------------l
set /p shopmenu=Please enter the number of the program you would like to download:
if %shopmenu%==1 git clone https://github.com/XavierHale/Shop-vibvent
if %shopmenu%==1e ( echo A platformer where you have to switch between characters to succeed
pause
goto :loadedshop
)
if %shopmenu%==2 git clone https://github.com/XavierHale/Shop-vscode 
if %shopmenu%==2e ( echo A very useable and expandable editor (We actauly used this to code Crimzen!)
pause
goto :loadedshop
)