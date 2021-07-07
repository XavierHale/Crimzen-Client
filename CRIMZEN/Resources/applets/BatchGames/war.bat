@echo off

color 0f

title TOTAL WAR!!!

echo.

echo Welcome to Total WarV1.2.1, by CSBX

echo UPDATE LOG- V1.2.1

pause

:players

color 0f

cls

set player=

set replay=

echo.

set /p player=Select 1 or 2 player mode:

if '%player%'=='1' goto name

if '%player%'=='2' goto p1name

goto players

:name

cls

set name=

echo.

set /p name=Please type in your name (One word):

if '%name%'=='' goto name

rem Easter Egg:

if '%name%'=='Vincent' goto win

if '%name%'=='CreepKill2003' goto win

:country

cls

set country=

set enemy=

echo.

echo Welcome %name%!

echo.

set /p country=Choose your country; USA, Russia, UK, or Canada:

if '%country%'=='usa' goto enemy1

if '%country%'=='USA' goto enemy1

if '%country%'=='Usa' goto enemy1

if '%country%'=='Russia' goto enemy2

if '%country%'=='russia' goto enemy2

if '%country%'=='canada' goto enemy3

if '%country%'=='Canada' goto enemy3

if '%country%'=='UK' goto enemy4

if '%country%'=='uk' goto enemy4

if '%country%'=='Uk' goto enemy4

goto country

:enemy1

set country=USA

goto enemy

:enemy2

set country=Russia

goto enemy

:enemy3

set country=Canada

:enemy4

set country=UK

:enemy

set /a cpucountryrand=%random% %%6 +1

if '%cpucountryrand%'=='0' goto enemy

if '%cpucountryrand%'=='1' set enemy=Russia

if '%cpucountryrand%'=='2' set enemy=USA

if '%cpucountryrand%'=='3' set enemy=Canada

if '%cpucountryrand%'=='4' set enemy=UK

if '%cpucountryrand%'=='5' goto enemy

if '%cpucountryrand%'=='6' goto enemy

if '%enemy%'=='%country%' goto enemy

:begin

set user=1000

set cpu=1000

set nuke=1

set airstrike=2

set missiles=3

set cpunuke=1

set cpuairstrike=2

set cpumissiles=3

:gameplay

cls

set move=

set choice=

set cpucount=0

echo.

echo %name%, your turn.

echo %country%: %user% DEF

echo Options:

echo %enemy%: %cpu% DEF

echo 1. Fire NUKE x %nuke%

echo.

echo 2. Fire Airstrike x %airstrike%

echo.

echo 3. Fire Missiles x %missiles%

echo.

echo 4. Surrender

echo.

echo 5. Do nothing

echo.

set /p move=Select your option:

if '%move%'=='1' goto nuke

if '%move%'=='2' goto airstrike

if '%move%'=='3' goto missiles

if '%move%'=='4' goto surrender

if '%move%'=='5' goto cpu1

goto gameplay

:nuke

cls

if '%nuke%'=='0' goto nonuke

echo.

echo %name% has fired a NUKE headed towards %enemy%!

echo.

ping localhost -n 4 >nul

echo Hit!

echo.

echo %enemy% has lost 400 DEF!

echo.

pause

set /a cpu=%cpu% - 400

set nuke=0

if '%cpu%'=='0' goto win

if '%cpu%'=='-100' goto win

if '%cpu%'=='-200' goto win

if '%cpu%'=='-300' goto win

goto cpu1

:nonuke

echo.

echo You can't use a nuke since you don't have any more left!

echo.

pause

goto gameplay

:airstrike

cls

if '%airstrike%'=='0' goto noairstrike

echo.

echo %name% has fired an airstrike on %enemy%!

echo.

ping localhost -n 4 >nul

echo Hit!

echo.

echo %enemy% has lost 300 DEF!

echo.

pause

set /a cpu=%cpu% - 300

set /a airstrike=%airstrike% - 1

if '%cpu%'=='0' goto win

if '%cpu%'=='-100' goto win

if '%cpu%'=='-200' goto win

if '%cpu%'=='-300' goto win

goto cpu1

:noairstrike

echo.

echo You can't use an airstrike since you don't have any more left!

echo.

pause

goto gameplay

:missiles

cls

if '%missiles%'=='0' goto nomissiles

echo.

echo %name% has fired multiple missiles headed towards %enemy%!

echo.

ping localhost -n 4 >nul

echo Hit!

echo.

echo %enemy% has lost 200 DEF!

echo.

pause

set /a cpu=%cpu% - 200

set /a missiles=%missiles% - 1

if '%cpu%'=='0' goto win

if '%cpu%'=='-100' goto win

if '%cpu%'=='-200' goto win

if '%cpu%'=='-300' goto win

goto cpu1

:nomissiles

echo.

echo You can't use missiles since you don't have any more left!

echo.

pause

goto gameplay

:surrender

color 0c

cls

echo.

echo "We may have lost the war, but we still have our dignity..."

echo.

pause

:end

cls

echo.

echo "We may have lost the war, but we still have our dignity..."

echo.

set /p replay=Type anything to replay the game. Type 'x' to exit:

if '%replay%'=='x' goto suggest

if '%replay%'=='' goto end

goto players

:win

color 02

cls

echo.

echo You have won Total War!!!

echo.

pause

:win2

cls

echo.

echo You have won Total War!!!

echo.

set /p replay=Type anything to replay the game. Type 'x' to exit:

if '%replay%'=='x' goto suggest

if '%replay%'=='' goto win2

goto players

:cpu1

cls

set /a cpucount=%cpucount% + 1

if '%cpucount%'=='10' goto cpu2

echo.

echo My turn.

echo %country%: %user% DEF

echo Options:

echo %enemy%: %cpu% DEF

echo 1. Fire NUKE x %cpunuke%

echo.

echo 2. Fire Airstrike x %cpuairstrike%

echo.

echo 3. Fire Missiles x %cpumissiles%

echo.

echo 4. Surrender

echo.

echo 5. Do nothing

echo.

echo Select your option:/

ping localhost -n 1 >nul

ping localhost -n 1 >nul

ping localhost -n 1 >nul

ping localhost -n 1 >nul

cls

echo.

echo My turn.

echo %country%: %user% DEF

echo Options:

echo %enemy%: %cpu% DEF

echo 1. Fire NUKE x %cpunuke%

echo.

echo 2. Fire Airstrike x %cpuairstrike%

echo.

echo 3. Fire Missiles x %cpumissiles%

echo.

echo 4. Surrender

echo.

echo 5. Do nothing

echo.

echo Select your option:-

ping localhost -n 1 >nul

ping localhost -n 1 >nul

ping localhost -n 1 >nul

ping localhost -n 1 >nul

cls

echo.

echo My turn.

echo %country%: %user% DEF

echo Options:

echo %enemy%: %cpu% DEF

echo 1. Fire NUKE x %cpunuke%

echo.

echo 2. Fire Airstrike x %cpuairstrike%

echo.

echo 3. Fire Missiles x %cpumissiles%

echo.

echo 4. Surrender

echo.

echo 5. Do nothing

echo.

echo Select your option:\

ping localhost -n 1 >nul

ping localhost -n 1 >nul

ping localhost -n 1 >nul

ping localhost -n 1 >nul

goto cpu1

:cpu2

cls

set /a choice=%random% %%6

if '%choice%'=='0' goto cpu2

if '%choice%'=='4' goto cpu2

if '%choice%'=='6' goto cpu2

echo.

echo My turn.

echo %country%: %user% DEF

echo Options:

echo %enemy%: %cpu% DEF

echo 1. Fire NUKE x %cpunuke%

echo.

echo 2. Fire Airstrike x %cpuairstrike%

echo.

echo 3. Fire Missiles x %cpumissiles%

echo.

echo 4. Surrender

echo.

echo 5. Do nothing

echo.

echo Select your option:%choice%

ping localhost -n 4 >nul

if '%choice%'=='1' goto cpunuke

if '%choice%'=='2' goto cpuairstrike

if '%choice%'=='3' goto cpumissiles

if '%choice%'=='5' goto gameplay

:cpunuke

cls

if '%cpunuke%'=='0' goto nocpunuke

echo.

echo I have fired a NUKE headed towards %country%!

echo.

ping localhost -n 4 >nul

echo Hit!

echo.

echo %country% has lost 400 DEF!

echo.

ping localhost -n 4 >nul

set /a user=%user% - 400

set cpunuke=0

if '%user%'=='0' goto cpuwin

if '%user%'=='-100' goto cpuwin

if '%user%'=='-200' goto cpuwin

if '%user%'=='-300' goto cpuwin

goto gameplay

:nocpunuke

echo.

echo I can't use a nuke since I don't have any more left!

echo.

ping localhost -n 4 >nul

set cpucount=0

goto cpu1

:cpuairstrike

cls

if '%cpuairstrike%'=='0' goto nocpuairstrike

echo.

echo I have fired an airstrike on %country%!

echo.

ping localhost -n 4 >nul

echo Hit!

echo.

echo %country% has lost 300 DEF!

echo.

ping localhost -n 4 >nul

set /a user=%user% - 300

set /a cpuairstrike=%cpuairstrike% - 1

if '%user%'=='0' goto cpuwin

if '%user%'=='-100' goto cpuwin

if '%user%'=='-200' goto cpuwin

if '%user%'=='-300' goto cpuwin

goto gameplay

:nocpuairstrike

echo.

echo I can't use an airstrike since I don't have any more left!

echo.

ping localhost -n 4 >nul

set cpucount=0

goto cpu1

:cpumissiles

cls

if '%cpumissiles%'=='0' goto nocpumissiles

echo.

echo I have fired multiple missiles headed towards %country%!

echo.

ping localhost -n 4 >nul

echo Hit!

echo.

echo %country% has lost 200 DEF!

echo.

ping localhost -n 4 >nul

set /a user=%user% - 200

set /a cpumissiles=%cpumissiles% - 1

if '%user%'=='0' goto cpuwin

if '%user%'=='-100' goto cpuwin

if '%user%'=='-200' goto cpuwin

if '%user%'=='-300' goto cpuwin

goto gameplay

:nocpumissiles

echo.

echo I can't use missiles since I don't have any more left!

echo.

ping localhost -n 4 >nul

set cpucount=0

goto cpu1

:cpuwin

color 0c

cls

echo.

echo It was a long battle today. I have emerged victorious, even though you tried

echo very well.

echo.

pause

:cpuwin2

cls

echo.

echo It was a long battle today. I have emerged victorious, even though you tried

echo very well.

echo.

set /p replay=Type anything to replay the game. Type 'x' to exit:

if '%replay%'=='x' goto suggest

if '%replay%'=='' goto cpuwin2

goto players

:p1name

cls

set p1name=

echo.

set /p p1name=Player 1, please type in your name (One word):

if '%p1name%'=='' goto p1name

:p2name

cls

set p2name=

echo.

set /p p2name=Player 2, please type in your name (One word):

if '%p2name%'=='%p1name%' goto p2name

if '%p2name%'=='' goto p2name

rem Easter Egg:

if '%p1name%'=='Vincent' goto p1win

if '%p2name%'=='Vincent' goto p2win

:p1country

cls

set p1country=

echo.

echo Welcome %p1name%!

echo.

set /p p1country=Choose your country; USA, Russia, or Canada:

if '%p1country%'=='usa' goto p1country1

if '%p1country%'=='USA' goto p1country1

if '%p1country%'=='Usa' goto p1country1

if '%p1country%'=='Russia' goto p1country2

if '%p1country%'=='russia' goto p1country2

if '%p1country%'=='canada' goto p1country3

if '%p1country%'=='Canada' goto p1country3

if '%p1country%'=='UK' got p1country4

if '%p1country%'=='uk' got p1country4

if '%p1country%'=='Uk' got p1country4

goto p1country

:p1country1

set p1country=USA

goto p2country

:p1country2

set p1country=Russia

goto p2country

:p1country3

set p1country=Canada

:p1country4

set p1country=UK

:p2country

cls

set p2country=

echo.

echo Welcome %p2name%!

echo.

set /p p2country=Choose your country; USA, Russia, UK, or Canada:

if '%p2country%'=='%p1country%' goto na

if '%p2country%'=='usa' goto p2country1

if '%p2country%'=='USA' goto p2country1

if '%p2country%'=='Usa' goto p2country1

if '%p2country%'=='Russia' goto p2country2

if '%p2country%'=='russia' goto p2country2

if '%p2country%'=='canada' goto p2country3

if '%p2country%'=='Canada' goto p2country3

if '%p2country%'=='UK' got p2country4

if '%p2country%'=='uk' got p2country4

if '%p2country%'=='Uk' got p2country4

goto p2country

:na

cls

echo.

echo You can't choose %p1country% because %p1name% has already chosen it.

pause >nul

goto p2country

:p2country1

set p2country=USA

goto begin2

:p2country2

set p2country=Russia

goto begin2

:p2country3

set p2country=Canada

goto begin2

:p2country4

set p2country=UK

goto begin2

:begin2

set p1health=1000

set p2health=1000

set p1nuke=1

set p1airstrike=2

set p1missiles=3

set p2nuke=1

set p2airstrike=2

set p2missiles=3

:p1gameplay

cls

set move=

set choice=

echo.

echo %p1name%, your turn.

echo %p1country%: %p1health% DEF

echo Options:

echo %p2country%: %p2health% DEF

echo 1. Fire NUKE x %p1nuke%

echo.

echo 2. Fire Airstrike x %p1airstrike%

echo.

echo 3. Fire Missiles x %p1missiles%

echo.

echo 4. Surrender

echo.

echo 5. Do nothing

echo.

set /p move=Select your option:

if '%move%'=='1' goto p1nuke

if '%move%'=='2' goto p1airstrike

if '%move%'=='3' goto p1missiles

if '%move%'=='4' goto p1surrender

if '%move%'=='5' goto p2gameplay

goto p1gameplay

:p1nuke

cls

if '%p1nuke%'=='0' goto nop1nuke

echo.

echo %p1name% has fired a NUKE headed towards %p2country%!

echo.

ping localhost -n 4 >nul

echo Hit!

echo.

echo %p2country% has lost 400 DEF!

echo.

pause

set /a p2health=%p2health% - 400

set p1nuke=0

if '%p2health%'=='0' goto p1win

if '%p2health%'=='-100' goto p1win

if '%p2health%'=='-200' goto p1win

if '%p2health%'=='-300' goto p1win

goto p2gameplay

:nop1nuke

echo.

echo You can't use a nuke since you don't have any more left!

echo.

pause

goto p1gameplay

:p1airstrike

cls

if '%p1airstrike%'=='0' goto nop1airstrike

echo.

echo %p1name% has fired an airstrike on %p2country%!

echo.

ping localhost -n 4 >nul

echo Hit!

echo.

echo %p2country% has lost 300 DEF!

echo.

pause

set /a p2health=%p2health% - 300

set /a p1airstrike=%p1airstrike% - 1

if '%p2health%'=='0' goto p1win

if '%p2health%'=='-100' goto p1win

if '%p2health%'=='-200' goto p1win

if '%p2health%'=='-300' goto p1win

goto p2gameplay

:nop1airstrike

echo.

echo You can't use an airstrike since you don't have any more left!

echo.

pause

goto p1gameplay

:p1missiles

cls

if '%p1missiles%'=='0' goto nop1missiles

echo.

echo %p1name% has fired multiple missiles headed towards %p2country%!

echo.

ping localhost -n 4 >nul

echo Hit!

echo.

echo %p2country% has lost 200 DEF!

echo.

pause

set /a p2health=%p2health% - 200

set /a p1missiles=%p1missiles% - 1

if '%p2health%'=='0' goto p1win

if '%p2health%'=='-100' goto p1win

if '%p2health%'=='-200' goto p1win

if '%p2health%'=='-300' goto p1win

goto p2gameplay

:nop1missiles

echo.

echo You can't use missiles since you don't have any more left!

echo.

pause

goto p1gameplay

:p1surrender

color 02

cls

echo.

echo %p2name% has won Total War!!!

echo.

pause

:p1surrender2

cls

echo.

echo %p2name% has won Total War!!!

echo.

set /p replay=Type anything to replay the game. Type 'x' to exit:

if '%replay%'=='x' goto suggest

if '%replay%'=='' goto p1surrender2

goto players

:p1win

color 02

cls

echo.

echo %p1name% has won Total War!!!

echo.

pause

:p1win2

cls

echo.

echo %p1name% has won Total War!!!

echo.

set /p replay=Type anything to replay the game. Type 'x' to exit:

if '%replay%'=='x' goto suggest

if '%replay%'=='' goto p1win2

goto players

:p2gameplay

cls

set move=

set choice=

echo.

echo %p2name%, your turn.

echo %p2country%: %p2health% DEF

echo Options:

echo %p1country%: %p1health% DEF

echo 1. Fire NUKE x %p2nuke%

echo.

echo 2. Fire Airstrike x %p2airstrike%

echo.

echo 3. Fire Missiles x %p2missiles%

echo.

echo 4. Surrender

echo.

echo 5. Do nothing

echo.

set /p move=Select your option:

if '%move%'=='1' goto p2nuke

if '%move%'=='2' goto p2airstrike

if '%move%'=='3' goto p2missiles

if '%move%'=='4' goto p2surrender

if '%move%'=='5' goto p1gameplay

goto p2gameplay

:p2nuke

cls

if '%p2nuke%'=='0' goto nop2nuke

echo.

echo %p2name% has fired a NUKE headed towards %p1country%!

echo.

ping localhost -n 4 >nul

echo Hit!

echo.

echo %p1country% has lost 400 DEF!

echo.

pause

set /a p1health=%p1health% - 400

set p2nuke=0

if '%p1health%'=='0' goto p2win

if '%p1health%'=='-100' goto p2win

if '%p1health%'=='-200' goto p2win

if '%p1health%'=='-300' goto p2win

goto p1gameplay

:nop2nuke

echo.

echo You can't use a nuke since you don't have any more left!

echo.

pause

goto p2gameplay

:p2airstrike

cls

if '%p2airstrike%'=='0' goto nop2airstrike

echo.

echo %p2name% has fired an airstrike on %p1country%!

echo.

ping localhost -n 4 >nul

echo Hit!

echo.

echo %p1country% has lost 300 DEF!

echo.

pause

set /a p1health=%p1health% - 300

set /a p2airstrike=%p2airstrike% - 1

if '%p1health%'=='0' goto p2win

if '%p1health%'=='-100' goto p2win

if '%p1health%'=='-200' goto p2win

if '%p1health%'=='-300' goto p2win

goto p1gameplay

:nop2airstrike

echo.

echo You can't use an airstrike since you don't have any more left!

echo.

pause

goto p2gameplay

:p2missiles

cls

if '%p2missiles%'=='0' goto nop2missiles

echo.

echo %p2name% has fired multiple missiles headed towards %p1country%!

echo.

ping localhost -n 4 >nul

echo Hit!

echo.

echo %p1country% has lost 200 DEF!

echo.

pause

set /a p1health=%p1health% - 200

set /a p2missiles=%p2missiles% - 1

if '%p1health%'=='0' goto p2win

if '%p1health%'=='-100' goto p2win

if '%p1health%'=='-200' goto p2win

if '%p1health%'=='-300' goto p2win

goto p1gameplay

:nop2missiles

echo.

echo You can't use missiles since you don't have any more left!

echo.

pause

goto p2gameplay

:p2surrender

color 02

cls

echo.

echo %p1name% has won Total War!!!

echo.

pause

:p2surrender2

cls

echo.

echo %p1name% has won Total War!!!

echo.

set /p replay=Type anything to replay the game. Type 'x' to exit:

if '%replay%'=='x' goto suggest

if '%replay%'=='' goto p2surrender2

goto players

color 02

:p2win

cls

echo.

echo %p2name% has won Total War!!!

echo.

pause

:p2win2

cls

echo.

echo %p2name% has won Total War!!!

echo.

set /p replay=Type anything to replay the game. Type 'x' to exit:

if '%replay%'=='x' goto suggest

if '%replay%'=='' goto p2win2

goto players

:suggest

cls

echo.

echo Before you leave, can you suggest a country I can add to the file?

echo.

set /p suggestion=Suggest a country here:

if '%suggestion%'=='' goto suggest

echo %suggestion% >> suggestions.txt

2 replies 
Epicfy
Epicfy5 months ago
ReplyUpvote
That must have took a while wowwwiez

Mewzee studio
Mewzee studio1 year ago on Introduction
ReplyUpvote
i also made a batch game that is word war. It is a brain game.
It is toooo cool. it has sounds also.
download= http://zipansion.com/2azJH
plz try this.
and see this awesome thing
transfer.bat
website= http://preofery.com/yd6

EvanM100
EvanM1002 years ago
ReplyUpvote
Saw this a long time ago, used improved/fixed it to make my own version (Gave you credit) Good work.

kinglarry II
kinglarry II2 years ago
ReplyUpvote
oh u were supposed to type the number

kinglarry II
kinglarry II2 years ago
ReplyUpvote
the second one gave me a load of error messages

kinglarry II
kinglarry II2 years ago
ReplyUpvote
I copied the program and the game worked out fine, but when we launched attack, it just crashed me

ThomasM470
ThomasM4703 years ago
ReplyUpvote
also there are serval file that you might need to make your self in c:/users/%username%/

ThomasM470
ThomasM4703 years ago
ReplyUpvote
please tell me if you see any bugs

ThomasM470
ThomasM4703 years ago
ReplyUpvote
this is a redone version of i made of the game. it add powerups levels a store and more
@echo off
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
set "DEL=%%a"
)
>> "starting nukes.txt" file
>> "starting missiles.txt" file
>> "starting airstrikes.txt" file
>> "starting health.txt" file
>> "colora.txt" file
>> "xp.txt" file
>> "level.txt" file
set /p xp=set /p level=set /p color=set /p losea=set /p wina=set /p cash=set /p powerupnuke=set /p powerupvi=set /p powerupjam=set /p poweruphealth=set /p powerup2dam=if '%losea%'=='' goto setlose
goto setlosea
:setlose
set losea=0
:setlosea
goto setwina
:setwin
set wina=0
:setwina





set version=1.2.9
title TOTAL WAR : V%version%
:mainup
set /p xp=if %xp%==10 set xpl=/
if %xp%==20 set xpl=//
if %xp%==30 set xpl=///
if %xp%==40 set xpl=////
if %xp%==50 set xpl=/////
if %xp%==60 set xpl=//////
if %xp%==70 set xpl=///////
if %xp%==80 set xpl=////////
if %xp%==90 set xpl=/////////
if %xp%==100 set xpl=/
if %xp%==100 set /a level=%level%+1
if %xp%==100 > level.txt echo.%level%
if %xp%==100 set xp=10
> "xp.txt" echo.%xp%
set /p level=set /p color=color %color%
title TOTAL WAR : V%version%
cls

echo welcome to TOTAL WAR
echo loss's : %losea%
echo wins's : %wina%
echo cash : $%cash%
echo [%xpl%] level:%level%
echo.
echo [play]
echo store
echo help
echo updatelog
echo settings
echo exit
echo.
echo w - to select up s - to select down o - to select
choice /c wso
if %errorlevel% equ 1 call:mainup
if %errorlevel% equ 2 call:maindownstore
if %errorlevel% equ 3 call:startgame




:maindownstore
cls
echo welcome to TOTAL WAR
echo loss's : %losea%
echo wins's : %wina%
echo cash : $%cash%
echo [%xpl%] level:%level%
echo.
echo play
echo [store]
echo help
echo updatelog
echo settings
echo exit
echo.
echo w - to select up s - to select down o - to select
choice /c wso
if %errorlevel% equ 1 call:mainup
if %errorlevel% equ 2 call:maindown
if %errorlevel% equ 3 call:store


















::------------------------------------------------------------
:maindown
cls
echo welcome to TOTAL WAR
echo loss's : %losea%
echo wins's : %wina%
echo cash : $%cash%
echo [%xpl%] level:%level%
echo.
echo play
echo store
echo [help]
echo updatelog
echo settings
echo exit
echo.
echo w - to select up s - to select down o - to select
choice /c wso
if %errorlevel% equ 1 call:maindownstore
if %errorlevel% equ 2 call:maindowndown
if %errorlevel% equ 3 call:help



::------------------------------------------------------------
:maindowndown
cls
echo welcome to TOTAL WAR
echo loss's : %losea%
echo wins's : %wina%
echo cash : $%cash%
echo [%xpl%] level:%level%
echo.
echo play
echo store
echo help
echo [updatelog]
echo settings
echo exit
echo.
echo w - to select up s - to select down o - to select
choice /c wso
if %errorlevel% equ 1 call:maindown
if %errorlevel% equ 2 call:maindowndowndown
if %errorlevel% equ 3 call:updatelog



::------------------------------------------------------------
:maindowndowndown
cls
echo welcome to TOTAL WAR
echo loss's : %losea%
echo wins's : %wina%
echo cash : $%cash%
echo [%xpl%] level:%level%
echo.
echo play
echo store
echo help
echo updatelog
echo [settings]
echo exit
echo.
echo w - to select up s - to select down o - to select
choice /c wso
if %errorlevel% equ 1 call:maindowndown
if %errorlevel% equ 2 call:maindowndowndowndown
if %errorlevel% equ 3 call:settings



::------------------------------------------------------------
:maindowndowndowndown
cls
echo welcome to TOTAL WAR
echo loss's : %losea%
echo wins's : %wina%
echo cash : $%cash%
echo [%xpl%] level:%level%
echo.
echo play
echo store
echo help
echo updatelog
echo settings
echo [exit]
echo.
echo w - to select up s - to select down o - to select
choice /c wso
if %errorlevel% equ 1 call:maindowndowndown
if %errorlevel% equ 2 call:maindowndowndowndown
if %errorlevel% equ 3 exit /b



::-----------------------------------------------------------------
::-----------------------------------------------------------------



::-----------------------------------------------------------------
::-----------------------------------------------------------------
:help
color 0a
cls
title TOTAL WAR : help
echo made by Vincent Allain and edited by CreepKill2003
echo welcome to WAR.
echo TOTAL WAR is a basic game made in a simple programing Language called batch.
echo.
echo.
echo.
echo -=starting a game=-
echo so the first thing you do when you start a game is entering your name.
echo you can on have one word for your name otherwise the game will crash.
echo for example-
echo thomas : CORRECT
echo thomas edison : WRONG
echo.
echo after entering your name you must chose a country. there are four countrys Available
echo Germany, USA, Russia, UK. there is no Advantage for selecting a certain country.
echo if you have won more than won at all we will be able to choose a emeny to face
echo different emenys have different Strategys.
echo.
echo.
echo.
echo.
echo -=the game=-
echo the aim of the game is to Eliminate the enemy's health points.
echo you get 3 Different weapons to Eliminate the enemy's health point's nuke's, airstrike's, and Missile's.
echo nukes are likey to hit and do massive damage.
echo airstikes are a half/half but do medium damage.
echo missiles are a medium chance and low damage
echo ther are 2 other things you can do on a turn.
echo 1 - Manufacture weapons. this is a chance to get a random weapn and a random amount
echo of that weapon.
echo 2 - medical camp. setup a medical camp that will give the player up to 300 health
echo for that turn.
echo on your turn you can chose to do one of these's options. whitch most
echo have a chance to final and waste you turn, same for the emeny.
echo.
echo.
echo.
echo -=settings=-
echo in the main meun there is a setting option you can chose to change the
echo amount of nukes, missiles, airstrikes, and health you have in a game.
echo in the setting option, in the main meun you can also change the color
echo to a color you like.
echo.
echo.
echo.
echo -=updatelog=-
echo the update log will show all the current updates and other updates before this
echo version.
echo.
echo.
echo.
echo -=files=-
echo the amount of wins, lose's, starting nukes and so on, are stored in files.
echo the files that store the amount of nukes, missiles, airstrikes and health
echo you start with should be stored in files in the same folder the game is in.
echo the win and lose's are stored in a differnt file. they have been stored in
echo your user file.
echo the starting files are stored with the game as they are essential for the game.
echo (just in case there is a with reaching the users file)
echo if you want to ever set a custom amount for the starting nukes or starting health
echo so on. for example, you want set health to 500 but you can only set it to 1000, 2000
echo 3000,4000, and 5000 throw the setting meun, well if you access the "starting health.txt"
echo file you can type in the number of health that you want and it should except that
echo number. you can do that to any of the starting file and if the win and lose'sadly
echo file work.
echo TIP - if you now how to program with batch/bat you can change the win and lose's files
echo location.
echo.
echo.
echo.
echo -=choice selector=-
echo the choice selector is used to select a option for a list for example when in main
echo meun you get a choice selector that looks like this...
echo.
echo.
echo [play]
echo help
echo updatelog
echo settings
echo exit
echo.
echo w - to select up s - to select down o - to select
echo.
echo you press 'w' to change to selectsion up. the [] is what has been selected.
echo 's' to change the selectsion down and 'o' is to select the current option selected.
echo so beauce currently got play selected in the example above if i press 'o' it would
echo start the game.
echo.
echo.
echo scroll up to see more options.
pause
goto mainup

::-----------------------------------------------------------------
::-----------------------------------------------------------------



::-----------------------------------------------------------------
::-----------------------------------------------------------------
:updatelog
cls
title TOTAL WAR : updatelog : V%version%
echo updatelog
echo.
echo.
echo.
echo v1.2.9
echo add : new powerup
echo fix : errors with sam emeny
echo.
echo.
echo.
echo v1.2.8
echo fix : color setting now works
echo.
echo.
echo.
echo v.1.2.7
echo add : new xp system to rank up and gain levels
echo fix : bugs with cash system
echo.
echo.
echo.
echo v1.2.6
echo fix : bugs with store
echo fix : bugs in game
echo.
echo.
echo.
echo V1.2.5
echo add : 2 new emenys to play against with diifernt tacticals
echo add : new store
echo add : 3 new powerups to be Purchased
echo fix : fixed bugs
echo fix : after wining or loseing color at main meun will not change.
echo change : tweaks to chances.
echo note : we are trying to fix the issue that you cant change color.
echo.
echo.
echo.
echo.
echo V1.2.4
echo change - win/loss amount file should work for everyone
echo.
echo.
echo.
echo V1.2.3
echo change : all weapons are more likey to hit
echo change : medical camp now restores 0-300 health
echo change : Manufactureing weapons can give more than 1 weapon
echo add : added more to help.
echo.
echo.
echo.
echo V1.2.2
echo - major changes to game.
echo - added a main meun
echo - changes to update log
echo - changes to select country
echo - added : help
echo - added : settings
echo - added : Manufacture weapons - creates random weapon
echo - added : medical camp - restore 100 health
echo.
echo.
echo.
echo V1.2.1
echo - Will no longer keep your text color as green or red
echo - when you restart after winning or losing a match.
echo - updatelog added.
echo.
echo.
echo.
pause
goto mainup
::-----------------------------------------------------------------
:settings
title TOTAL WAR : settings
cls
echo [set starting nukes]
echo set starting missiles
echo set starting airstrike
echo set starting health
echo color
echo main meun
choice /c wso
if %errorlevel% equ 1 call:settings
if %errorlevel% equ 2 call:settings1
if %errorlevel% equ 3 call:setnukes


:settings1
cls
echo set starting nukes
echo [set starting missiles]
echo set starting airstrike
echo set starting health
echo color
echo main meun
choice /c wso
if %errorlevel% equ 1 call:settings
if %errorlevel% equ 2 call:settings2
if %errorlevel% equ 3 call:setmissiles


:settings2
cls
echo set starting nukes
echo set starting missiles
echo [set starting airstrike]
echo set starting health
echo color
echo main meun
choice /c wso
if %errorlevel% equ 1 call:settings1
if %errorlevel% equ 2 call:settings3
if %errorlevel% equ 3 call:setairstrikes

::-----------------------------------------------------------------
:settings3
cls
echo set starting nukes
echo set starting missiles
echo set starting airstrike
echo [set starting health]
echo color
echo main meun
choice /c wso
if %errorlevel% equ 1 call:settings2
if %errorlevel% equ 2 call:settings4
if %errorlevel% equ 3 call:sethealth
goto settings
::-----------------------------------------------------------------



::-----------------------------------------------------------------
:settings4
cls
echo set starting nukes
echo set starting missiles
echo set starting airstrike
echo set starting health
echo [color]
echo main meun
choice /c wso
if %errorlevel% equ 1 call:settings3
if %errorlevel% equ 2 call:settings5
if %errorlevel% equ 3 call:color
::-----------------------------------------------------------------



::-----------------------------------------------------------------
:settings5
cls
echo set starting nukes
echo set starting missiles
echo set starting airstrike
echo set starting health
echo color
echo [main meun]
choice /c wso
if %errorlevel% equ 1 call:settings4
if %errorlevel% equ 2 call:settings5
if %errorlevel% equ 3 call:mainup
::-----------------------------------------------------------------



::-----------------------------------------------------------------
:color
cls
echo please enter wanted color.
echo.
echo Color attributes are specified by TWO hex digits -- the first
echo corresponds to the background; the second the foreground. Each digit
echo can be any of the following values:
echo.
echo 0 = Black 8 = Gray
echo 1 = Blue 9 = Light Blue
echo 2 = Green A = Light Green
echo 3 = Aqua B = Light Aqua
echo 4 = Red C = Light Red
echo 5 = Purple D = Light Purple
echo 6 = Yellow E = Light Yellow
echo 7 = White F = Bright White
echo.
set /p color=">"
> "colora.txt" echo.%color%
color %color%
echo.
echo color set.
pause
goto settings






::-----------------------------------------------------------------
:setnukes
cls
echo select the amount of nukes you want to start with. [1-5]
echo.
choice /c 12345
if %errorlevel% equ 1 call:nuke1
if %errorlevel% equ 2 call:nuke2
if %errorlevel% equ 3 call:nuke3
if %errorlevel% equ 4 call:nuke4
if %errorlevel% equ 5 call:nuke5


:nuke1
> "starting nukes.txt" echo.1
goto nukedone
:nuke2
> "starting nukes.txt" echo.2
goto nukedone
:nuke3
> "starting nukes.txt" echo.3
goto nukedone
:nuke4
> "starting nukes.txt" echo.4
goto nukedone
:nuke5
> "starting nukes.txt" echo.5
goto nukedone
:nukedone
echo.
set /p nuf=echo set! you are staring with %nuf% nuke/s
pause
goto settings
::-----------------------------------------------------------------




::-----------------------------------------------------------------
:setmissiles
cls
echo select the amount of missiles you want to start with. [1-5]
echo.
choice /c 12345
if %errorlevel% equ 1 call:missiles1
if %errorlevel% equ 2 call:missiles2
if %errorlevel% equ 3 call:missiles3
if %errorlevel% equ 4 call:missiles4
if %errorlevel% equ 5 call:missiles5


:missiles1
> "starting missiles.txt" echo.1
goto missilesdone
:missiles2
> "starting missiles.txt" echo.2
goto missilesdone
:missiles3
> "starting missiles.txt" echo.3
goto missilesdone
:missiles4
> "starting missiles.txt" echo.4
goto missilesdone
:missiles5
> "starting missiles.txt" echo.5
goto nukedone
:missilesdone
echo.
set /p nuf=echo set! you are staring with %nuf% missile/s
pause
goto settings
::-----------------------------------------------------------------






::-----------------------------------------------------------------
:setairstrikes
cls
echo select the amount of airstrikes you want to start with. [1-5]
echo.
choice /c 12345
if %errorlevel% equ 1 call:airstrikes1
if %errorlevel% equ 2 call:airstrikes2
if %errorlevel% equ 3 call:airstrikes3
if %errorlevel% equ 4 call:airstrikes4
if %errorlevel% equ 5 call:airstrikes5


:airstrikes1
> "starting airstrikes.txt" echo.1
goto airstrikesdone
:airstrikes2
> "starting airstrikes.txt" echo.2
goto airstrikesdone
:airstrikes3
> "starting airstrikes.txt" echo.3
goto airstrikesdone
:airstrikes4
> "starting airstrikes.txt" echo.4
goto airstrikesdone
:airstrikes5
> "starting airstrikes.txt" echo.5
goto airstrikesdone
:airstrikesdone
echo.
set /p nuf=echo set! you are staring with %nuf% airstrikes/s
pause
goto settings
::-----------------------------------------------------------------








::-----------------------------------------------------------------
:sethealth
cls
echo select the amount of health you want to start with. [1-5]
echo.
echo 1 equals 1000 health. 2 equals 2000 health. so on.
echo.
choice /c 12345
if %errorlevel% equ 1 call:health1
if %errorlevel% equ 2 call:health2
if %errorlevel% equ 3 call:health3
if %errorlevel% equ 4 call:health4
if %errorlevel% equ 5 call:health5


:health1
> "starting health.txt" echo.1000
goto healthdone
:health2
> "starting health.txt" echo.2000
goto healthdone
:health3
> "starting health.txt" echo.3000
goto healthdone
:health4
> "starting health.txt" echo.4000
goto healthdone
:health5
> "starting health.txt" echo.5000
goto healthdone
:healthdone
echo.
set /p nuf=echo set! you are staring with %nuf% health
pause
goto settings
::-----------------------------------------------------------------








::-----------------------------------------------------------------
::-----------------------------------------------------------------















::-----------------------------------------------------------------
::----------------------------------------------------------------
:startgame
title TOTAL WAR : enter your name
cls
echo.
echo would you please enter your name.(one word)
set /p name=">"
echo.
::-----------------------------------------------------------------
::-----------------------------------------------------------------




::-----------------------------------------------------------------
::-----------------------------------------------------------------
:usa
title TOTAL WAR : selecting country
cls
echo please chose country.
echo.
echo [usa]
echo russia
echo uk
echo germany
echo.
choice /c wso
if %errorlevel% equ 1 call:usa
if %errorlevel% equ 2 call:russia
if %errorlevel% equ 3 call:usasel
::-----------------------------------------------------------------



::-----------------------------------------------------------------
:russia
cls
echo please chose country.
echo.
echo usa
echo [russia]
echo uk
echo germany
echo.
choice /c wso
if %errorlevel% equ 1 call:usa
if %errorlevel% equ 2 call:uk
if %errorlevel% equ 3 call:russiasel
::-----------------------------------------------------------------



::-----------------------------------------------------------------
:uk
cls
echo please chose country.
echo.
echo usa
echo russia
echo [uk]
echo germany
echo.
choice /c wso
if %errorlevel% equ 1 call:russia
if %errorlevel% equ 2 call:germany
if %errorlevel% equ 3 call:uksel
::-----------------------------------------------------------------



::-----------------------------------------------------------------
:germany
cls
echo please chose country.
echo.
echo usa
echo russia
echo uk
echo [germany]
echo.
choice /c wso
if %errorlevel% equ 1 call:uk
if %errorlevel% equ 2 call:germany
if %errorlevel% equ 3 call:germanysel
::-----------------------------------------------------------------
::-----------------------------------------------------------------












::-----------------------------------------------------------------
::-----------------------------------------------------------------
:usasel
set cpucountry=germany
set country=usa
goto set
::-----------------------------------------------------------------


::-----------------------------------------------------------------
:russiasel
set cpucountry=germany
set country=russia
goto set
::-----------------------------------------------------------------


::-----------------------------------------------------------------
:uksel
set cpucountry=germany
set country=uk
goto set
::-----------------------------------------------------------------


::-----------------------------------------------------------------
:germanysel
set cpucountry=usa
set country=germany
goto set
::-----------------------------------------------------------------
::-----------------------------------------------------------------









::-----------------------------------------------------------------
::-----------------------------------------------------------------
:set

set /p nukeset=
set /p missileset=
set /p airstrikeset=
set /p healthset=
set nuke=%nukeset%

set Missiles=%missileset%

set airstrike=%airstrikeset%

set cpunuke=%nukeset%

set cpumissiles=%missileset%

set cpuairstrike=%airstrikeset%

set user=%healthset%

set cpu=%healthset%

set andnum=0

set samsnum=0

set autokill=off


::-----------------------------------------------------------------
::-----------------------------------------------------------------








if %wina%==0 goto con
if %wina%==1 goto emenyselA
if %wina%==3 goto emenyselB
goto emenyselB
:con





::-----------------------------------------------------------------
::-----------------------------------------------------------------
:playerscreen

if %user%==0 goto giveup
if %user%==-100 goto giveup
if %user%==-200 goto giveup
if %user%==-300 goto giveup
if %user%==-400 goto giveup
set powerupgame2dam=off
set radjam=off

title TOTAL WAR : %name% : %country% : %user% health
cls
echo.
echo [%name% : %country%] [health:%user%] [health:%cpu%] [%cpuname% : %cpucountry%]
echo your turn
echo.
echo.
echo 1 - nuke - 500 Damage - x%nuke%
echo.
echo 2 - Missiles - 200 Damage - x%Missiles%
echo.
echo 3 - airstrike - 250 Damage - x%airstrike%
echo.
echo 4 - medical camp - healself 0-300 health
echo.
echo 5 - Manufacture weapons - create a random weapon
echo.
echo 6 - do nothing
echo.
echo 7 - giveup
echo.
echo 8 - powerups
echo.
choice /c 12345678 >nu1
if %errorlevel% equ 1 call:playernuke
if %errorlevel% equ 2 call:playermissles
if %errorlevel% equ 3 call:playerairstike
if %errorlevel% equ 4 call:playermedical
if %errorlevel% equ 5 call:playerweaponmake
if %errorlevel% equ 6 call:cpuplayersceen
if %errorlevel% equ 7 call:giveup
if %errorlevel% equ 8 call:powerupchosegame
goto playerscreen
::-----------------------------------------------------------------
::-----------------------------------------------------------------


:powerupchosegame
set storefivjam=4
set storefivab=4
if %level%==1 set storefivjam=a
if %level%==2 set storefivjam=a
if %level%==3 set storefivjam=a
if %level%==4 set storefivjam=a
if %level%==1 set storefivab=a
if %level%==2 set storefivab=a
if %level%==3 set storefivab=a
if %level%==4 set storefivab=a
if %level%==5 set storefivab=a
if %level%==6 set storefivab=a
if %level%==7 set storefivab=a
if %level%==8 set storefivab=a
if %level%==9 set storefivab=a












cls
echo here you can chose to use a powerup.
echo you can only have use 1 powerup a turn
echo.
echo 1 - +2 nukes - x%powerupnuke%
echo.
echo 2 - +500 health - x%poweruphealth%
echo.
echo 3 - 2x damage - x%powerup2dam%
if %storefivjam%==4 echo.
if %storefivjam%==4 echo 4 - rader jammer - x%powerupjam%
echo.
if %storefivab%==4 echo.
if %storefivab%==4 echo 5 - computer virus - x%powerupvi%
echo.
echo 9 - back
echo.

choice /c 123459
if %errorlevel% equ 1 if %powerupnuke%==0 goto powerupchosegame
if %errorlevel% equ 1 set /a nuke=%nuke%+2
if %errorlevel% equ 1 set /a powerupnuke=%powerupnuke%-1
if %errorlevel% equ 1 > c:/users/"%USERNAME%"/"powerupnuke.txt" echo.%powerupnuke%
if %errorlevel% equ 2 if %poweruphealth%==0 goto powerupchosegame
if %errorlevel% equ 2 set /a user=%user%+500
if %errorlevel% equ 2 set /a poweruphealth=%poweruphealth%-1
if %errorlevel% equ 2 > c:/users/"%USERNAME%"/"poweruphealth.txt" echo.%poweruphealth%
if %errorlevel% equ 3 if %powerup2dam%==0 goto powerupchosegame
if %errorlevel% equ 3 set powerupgame2dam=on
if %errorlevel% equ 3 set /a powerup2dam=%powerup2dam%-1
if %errorlevel% equ 3 > c:/users/"%USERNAME%"/"powerup2dam.txt" echo.%powerup2dam%
if %errorlevel% equ 4 if %powerupjam%==0 goto powerupchosegame
if %errorlevel% equ 4 set radjam=on
if %errorlevel% equ 4 set /a powerupjam=%powerupjam%-1
if %errorlevel% equ 4 > c:/users/"%USERNAME%"/"powerupjam.txt" echo.%powerupjam%
if %errorlevel% equ 5 if %powerupvi%==0 goto powerupchosegame
if %errorlevel% equ 5 set autokill=on
if %errorlevel% equ 5 set /a powerupvi=%powerupvi%-1
if %errorlevel% equ 5 > c:/users/"%USERNAME%"/"powerupvi.txt" echo.%powerupvi%
if %errorlevel% equ 6 call:playerscreen
goto playerscreenB






:playerscreenB

if %user%==0 goto giveup
if %user%==-100 goto giveup
if %user%==-200 goto giveup
if %user%==-300 goto giveup
if %user%==-400 goto giveup

title TOTAL WAR : %name% : %country% : %user% health
cls
echo.
echo [%name% : %country%] [health:%user%] [health:%cpu%] [%cpuname% : %cpucountry%]
echo your turn
echo.
echo.
echo 1 - nuke - 500 Damage - x%nuke%
echo.
echo 2 - Missiles - 200 Damage - x%Missiles%
echo.
echo 3 - airstrike - 250 Damage - x%airstrike%
echo.
echo 4 - medical camp - healself 0-300 health
echo.
echo 5 - Manufacture weapons - create a random weapon
echo.
echo 6 - do nothing
echo.
echo 7 - giveup
echo.
choice /c 1234567 >nu1
if %errorlevel% equ 1 call:playernuke
if %errorlevel% equ 2 call:playermissles
if %errorlevel% equ 3 call:playerairstike
if %errorlevel% equ 4 call:playermedical
if %errorlevel% equ 5 call:playerweaponmake
if %errorlevel% equ 6 call:cpuplayersceen
if %errorlevel% equ 7 call:giveup
goto playerscreen














::-----------------------------------------------------------------
::-----------------------------------------------------------------
:: NUKE
:playernuke
cls
if %nuke%==0 goto nonuke
set /a choice=%random% %%6
cls
echo nuke heading to %cpucountry%
echo.
set /a nuke=%nuke%-1
::-----------------------------------------------------------------



::-----------------------------------------------------------------
echo /
timeout /t 1 >nu1
cls
echo nuke heading to %cpucountry%
echo.
echo -
timeout /t 1 >nu1
cls
echo nuke heading to %cpucountry%
echo.
echo \
timeout /t 1 >nu1
cls
echo nuke heading to %cpucountry%
echo.
echo /
timeout /t 1 >nu1
::-----------------------------------------------------------------


if %choice%==3 goto nukehit
if %choice%==5 goto nukehit
if %choice%==4 goto nukehit


::-----------------------------------------------------------------
:: if the nuke miss's
echo.
echo miss!
pause
goto cpuplayerscreen
::-----------------------------------------------------------------




::-----------------------------------------------------------------
:: if the nuke hits. (this is unlikely)
:nukehit
echo.
echo hit!
set /a cpu=%cpu%-500
if %powerupgame2dam%==on set /a cpu=%cpu%-500
echo.
echo %cpucountry% : health : %cpu%
pause
goto cpuplayerscreen
::-----------------------------------------------------------------



::-----------------------------------------------------------------
:: this is if the player has no nukes.
:nonuke
echo you have no nukes!
pause.
goto playerscreen
::-----------------------------------------------------------------
::-----------------------------------------------------------------















::-----------------------------------------------------------------
::-----------------------------------------------------------------
:: MISSSLES
:playermissles
cls
if %Missiles%==0 goto nomissles
set /a choice=%random% %%6
cls
echo Missiles are heading to %cpucountry%
echo.
set /a Missiles=%Missiles%-1
::-----------------------------------------------------------------



::-----------------------------------------------------------------
echo /
timeout /t 1 >nu1
cls
echo Missiles are heading to %cpucountry%
echo.
echo -
timeout /t 1 >nu1
cls
echo Missiles are heading to %cpucountry%
echo.
echo \
timeout /t 1 >nu1
cls
echo Missiles are heading to %cpucountry%
echo.
echo /
timeout /t 1 >nu1
::-----------------------------------------------------------------


if %choice%==4 goto missleshit
if %choice%==3 goto missleshit
if %choice%==5 goto missleshit

::-----------------------------------------------------------------
:: if the Missiles miss's
echo.
echo miss!
pause
goto cpuplayerscreen
::-----------------------------------------------------------------




::-----------------------------------------------------------------
:: if the Missiles hits. (this is half/half)
:missleshit
echo.
echo hit!
set /a cpu=%cpu%-150
if %powerupgame2dam%==on set /a cpu=%cpu%-150
echo.
echo %cpucountry% : health : %cpu%
pause
goto cpuplayerscreen
::-----------------------------------------------------------------



::-----------------------------------------------------------------
:: this is if the player has no Missiles .
:nomissles
echo you have no Missiles !
pause.
goto playerscreen
::-----------------------------------------------------------------
::-----------------------------------------------------------------





















::-----------------------------------------------------------------
::-----------------------------------------------------------------
:: airstrike
:playerairstike
cls
if %airstrike%==0 goto noairstrike
set /a choice=%random% %%6
cls
echo airstrike heading to %cpucountry%
echo.
set /a airstrike=%airstrike%-1
::-----------------------------------------------------------------



::-----------------------------------------------------------------
echo /
timeout /t 1 >nu1
cls
echo airstrike heading to %cpucountry%
echo.
echo -
timeout /t 1 >nu1
cls
echo airstrike heading to %cpucountry%
echo.
echo \
timeout /t 1 >nu1
cls
echo airstrike heading to %cpucountry%
echo.
echo /
timeout /t 1 >nu1
::-----------------------------------------------------------------


if %choice%==4 goto airstrikehit
if %choice%==2 goto airstrikehit


::-----------------------------------------------------------------
:: if the airstrike miss's
echo.
echo miss!
pause
goto cpuplayerscreen
::-----------------------------------------------------------------




::-----------------------------------------------------------------
:: if the airstrike hits. (this is half/half)
:airstrikehit
echo.
echo hit!
set /a cpu=%cpu%-250
if %powerupgame2dam%==on set /a cpu=%cpu%-250
echo.
echo %cpucountry% : health : %cpu%
pause
goto cpuplayerscreen
::-----------------------------------------------------------------



::-----------------------------------------------------------------
:: this is if the player has no airstrike.
:noairstrike
echo you have no airstrike!
pause.
goto playerscreen
::-----------------------------------------------------------------
::-----------------------------------------------------------------










::-----------------------------------------------------------------
::-----------------------------------------------------------------
:playermedical
cls
echo.
set /a choice=%random% %%4
echo seting up medical camp
echo.
timeout /t 2 >nu1
echo medical camp setup.
echo.
set /a user=%user%+%choice%00
echo you gained %choice%00 health. your heath is %user%.
pause
goto cpuplayersceen
::-----------------------------------------------------------------
::-----------------------------------------------------------------







::-----------------------------------------------------------------
::-----------------------------------------------------------------
:playerweaponmake
cls
echo Attempting to Manufacture a weapon.
echo.
::-----------------------------------------------------------------

set /a choice=%random% %%7






::-----------------------------------------------------------------
echo /
timeout /t 1 >nu1
cls
echo Attempting to Manufacture a weapon.
echo.
echo -
timeout /t 1 >nu1
cls
echo Attempting to Manufacture a weapon.
echo.
echo \
timeout /t 1 >nu1
cls
echo Attempting to Manufacture a weapon.
echo.
echo /
timeout /t 1 >nu1
echo.
if %Choice%==1 goto nukemake
if %Choice%==2 goto misslesmake
if %Choice%==3 goto airstrikemake

:noweapon
echo failer to create weapons.
pause
goto cpuplayersceen
:nukemake
set /a choice=%random% %%3
if %choice%==0 goto nukemake
echo you made a/some nuke/s
echo.
set /a nuke=%nuke%+%choice%
echo +%choice% nuke. you have %nuke% nuke/s
pause
goto cpuplayersceen
:misslesmake
set /a choice=%random% %%6
if %choice%==0 goto misslesmake
echo you made a/some Missile/s!
echo.
set /a Missiles =%Missiles %+%choice%
echo +%choice% Missile. you have %Missiles % Missile/s
pause
goto cpuplayersceen
:airstrikemake
set /a choice=%random% %%4
if %choice%==0 goto airstrikemake
echo you pepare some more bombs for a/some airstrike/s!
echo.
set /a airstrike=%airstrike%+%choice%
echo +%choice% airstrike. you have %airstrike% airstrike/s
pause
goto cpuplayersceen
::--------------------------------------------------------------
::--------------------------------------------------------------





::--------------------------------------------------------------
::--------------------------------------------------------------
:giveup
set autokill=off
title TOTAL WAR : %name% : %country% : has been defeated
color 0C
cls
echo DEFEAT.
timeout /t 3 >nu1
echo.
set /a choice=%random% %%9
if %choice%==0 echo %cpuname%: HA HA HA HA, i am to good for you to beat.
if %choice%==1 echo %cpuname%: nice try, nice try.
if %choice%==2 echo %cpuname%: LOSER! haha %cpucountry% for the win!
if %choice%==3 echo %cpuname%: you were so esay to beat!
if %choice%==4 echo %cpuname%: wish we could be fraiends.
if %choice%==5 echo %cpuname%: come on fight me again... cause i want to beat you again.
if %choice%==6 echo %cpuname%: next time be a Challenge for me.
if %choice%==7 echo %cpuname%: %country% will always win!
if %choice%==8 goto USAwiner
goto nextforwin
:USAwiner
if %cpucountry%==usa goto USAwinerA
echo %cpuname%: i am the BEST!
goto nextforwin
:USAwinerA
echo %cpuname%: U.S.A! U.S.A! U.S.A!
:nextforwin
echo.
pause
set /p lose=set /a losea=%lose%+1
> c:/users/"%USERNAME%"/"loss.txt" echo.%losea%
goto mainup



:win

SET autokill=off
set /p win=set /a wina=%win%+1
> c:/users/"%USERNAME%"/"win.txt" echo.%wina%

set /p cash=set /a cash=%cash%+1000
> c:/users/"%USERNAME%"/"cash.txt" echo.%cash%

set /a xp=%xp%+10
> "xp.txt" echo.%xp%


echo VICTORY
echo.
timeout /t 3 >nu1
:wina
cls
echo VICTORY
echo.
echo what do you say?
echo.
echo [loser!]
echo nice try
echo rematch?
choice /c wso
echo.
if %errorlevel% equ 1 call:wina
if %errorlevel% equ 2 call:winb
if %errorlevel% equ 3 echo %cpuname%:shutup!
pause
goto mainup


:winb
cls
echo VICTORY
echo.
echo what do you say?
echo.
echo loser!
echo [nice try]
echo rematch?
choice /c wso
echo.
if %errorlevel% equ 1 call:wina
if %errorlevel% equ 2 call:winc
if %errorlevel% equ 3 echo %cpuname%:thanks.
pause
goto mainup

:winc
cls
echo VICTORY
echo.
echo what do you say?
echo.
echo loser!
echo nice try
echo [rematch?]
choice /c wso
echo.
if %errorlevel% equ 1 call:winb
if %errorlevel% equ 2 call:winc
if %errorlevel% equ 3 call:rematch
pause
goto mainup

:rematch
echo yes!
timeout /t 2
goto set








::----------------------------------------------------------------
::----------------------------------------------------------------
:cpuplayerscreen
:cpuplayersceen
cls



if %autokill%==on set /a cpu=%cpu%-100
if %cpu%==0 goto win
if %cpu%==-100 goto win
if %cpu%==-50 goto win
if %cpu%==-150 goto win
if %cpu%==-250 goto win
if %cpu%==-350 goto win
if %cpu%==-200 goto win
if %cpu%==-450 goto win
if %cpu%==-300 goto win
if %cpu%==-400 goto win
if %cpu%==-500 goto win


echo %cpuname%'s turn
echo [%name% : %country%] [health:%user%] [health:%cpu%] [%cpuname% : %cpucountry%]
echo.
echo.
echo /
timeout /t 1 >nu1
cls
echo %cpuname%'s turn
echo [%name% : %country%] [health:%user%] [health:%cpu%] [%cpuname% : %cpucountry%]
echo.
echo.
echo -
timeout /t 1 >nu1
cls
echo %cpuname%'s turn
echo [%name% : %country%] [health:%user%] [health:%cpu%] [%cpuname% : %cpucountry%]
echo.
echo.
echo \
timeout /t 1 >nu1
cls
echo %cpuname%'s turn
echo [%name% : %country%] [health:%user%] [health:%cpu%] [%cpuname% : %cpucountry%]
echo.
echo.
echo /
timeout /t 1 >nu1
cls
echo %cpuname%'s turn
echo [%name% : %country%] [health:%user%] [health:%cpu%] [%cpuname% : %cpucountry%]
echo.
echo.
echo -
timeout /t 1 >nu1
cls
echo %cpuname%'s turn
echo [%name% : %country%] [health:%user%] [health:%cpu%] [%cpuname% : %cpucountry%]
echo.
echo.
echo \
timeout /t 1 >nu1













::-------------------------------------------
::--this is were the cpu makes it's choice.--
::-------------------------------------------

if %cpuname%==james goto cpuchoice


if %cpuname%==andrew goto cpuchoiceA


if %cpuname%==sam goto cpuchoiceb

:cpuchoice
set /a choice=%random% %%11

if not %cpunuke%==0 goto jjk
goto jjj
:jjk
set ankle=yes
:jjj
if %cpunuke%==0 goto jamessp
goto nextforchoice
:jamessp
:: for the differnt names for the emeny are little bit differnt
if %ankle%==no goto nextforchoice
set ankle=no
goto cpuweapon

:nextforchoice
if %choice%==1 goto cpunuke
if %choice%==2 goto cpunuke
if %choice%==3 goto cpunuke
if %choice%==4 goto cpumissile
if %choice%==5 goto cpuairstrike
if %choice%==6 goto cpumedic
if %choice%==7 goto cpuweapon
if %choice%==8 goto cpuairstrike
if %choice%==9 goto cpumissile
if %choice%==10 goto cpuweapon
goto cpuchoice





:cpuchoiceA
if %andnum%==5 goto nextforchoiceA

set /a %andum%=+1

set /a choice=%random% %%3
if %choice%==1 goto cpuweapon
if %choice%==2 goto cpumedic

:nextforchoiceA
set /a choice=%random% %%10
if %choice%==1 goto cpunuke
if %choice%==2 goto cpunuke
if %choice%==3 goto cpunuke
if %choice%==4 goto cpumissile
if %choice%==5 goto cpuairstrike
if %choice%==6 goto cpumedic
if %choice%==8 goto cpuairstrike
if %choice%==9 goto cpumissile
if %choice%==10 goto cpuweapon
GOTO cpuchoiceA



:cpuchoiceb
if %cpu%==50 goto cpumedic
if %cpu%==100 goto cpumedic
if %cpu%==150 goto cpumedic
if %cpu%==200 goto cpumedic
if %cpu%==250 goto cpumedic
if %cpu%==300 goto cpumedic
if %cpu%==350 goto cpumedic
if %cpu%==400 goto cpumedic
if %cpu%==450 goto cpumedic
if %cpu%==500 goto cpumedic
if %cpu%==550 goto cpumedic
if %cpu%==600 goto cpumedic
if %samsnum%==5 goto nextforchoiceb
set /a samsnum=%samsnum%+1
goto cpuweapon
:nextforchoiceb
set /a choice=%random% %%10
if %choice%==1 goto cpunuke
if %choice%==2 goto cpunuke
if %choice%==3 goto cpunuke
if %choice%==4 goto cpumissile
if %choice%==5 goto cpuairstrike
if %choice%==6 goto cpumedic
if %choice%==8 goto cpuairstrike
if %choice%==9 goto cpumissile
if %choice%==10 goto cpumissile
if %choice%==7 goto cpunuke
GOTO nextforchoiceb












::-----------------------------------------------------------------
::-----------------------------------------------------------------
:: NUKE
:cpunuke
cls
if %cpunuke%==0 goto cpunonuke
set /a choice=%random% %%6
cls
echo nuke has been fired! it heading towards %country%
echo.
set /a cpunuke=%cpunuke%-1
::-----------------------------------------------------------------



::-----------------------------------------------------------------
echo /
timeout /t 1 >nu1
cls
echo nuke has been fired! it heading towards %country%
echo.
echo -
timeout /t 1 >nu1
cls
echo nuke has been fired! it heading towards %country%
echo.
echo \
timeout /t 1 >nu1
cls
echo nuke has been fired! it heading towards %country%
echo.
echo /
timeout /t 1 >nu1
::-----------------------------------------------------------------


if %radjam%==on goto cpunukemiss
if %choice%==2 goto cpunukehit
if %choice%==4 goto cpunukehit
if %choice%==3 goto cpunukehit
if %choice%==5 goto cpunukehit

::-----------------------------------------------------------------
:: if the nuke miss's
:cpunukemiss
echo.
echo miss!
pause
goto playerscreen
::-----------------------------------------------------------------




::-----------------------------------------------------------------
:: if the nuke hits. (this is unlikely)
:cpunukehit
echo.
echo hit!
set /a user=%user%-500
echo.
echo %country% : health : %user%
pause
goto playerscreen
::-----------------------------------------------------------------



::-----------------------------------------------------------------
:: this is if the player has no nukes.
:cpunonuke

goto cpuchoice
::-----------------------------------------------------------------
::-----------------------------------------------------------------

















::-----------------------------------------------------------------
::-----------------------------------------------------------------
:: MISSSLES
:cpumissile
cls
if %cpuMissiles%==0 goto cpunomissiles
set /a choice=%random% %%6
cls
echo Missiles are heading to %country%
echo.
set /a cpuMissiles=%cpuMissiles%-1

::-----------------------------------------------------------------



::-----------------------------------------------------------------
echo /
timeout /t 1 >nu1
cls
echo warrning missiles heading towards %country%
echo.
echo -
timeout /t 1 >nu1
cls
echo warrning missiles heading towards %country%
echo.
echo \
timeout /t 1 >nu1
cls
echo warrning missiles heading towards %country%
echo.
echo /
timeout /t 1 >nu1
::-----------------------------------------------------------------

if %radjam%==on goto cpunukemiss
if %choice%==4 goto cpumissileshit
if %choice%==3 goto cpumissileshit
if %choice%==5 goto cpumissileshit


::-----------------------------------------------------------------
:: if the Missiles miss's
echo.
echo miss!
pause
goto playerscreen
::-----------------------------------------------------------------




::-----------------------------------------------------------------
:: if the Missiles hits. (this is half/half)
:cpumissileshit
echo.
echo hit!
set /a user=%user%-200
echo.
echo %country% : health : %user%
pause
goto playerscreen
::-----------------------------------------------------------------



::-----------------------------------------------------------------
:: this is if the player has no Missiles .
:cpunomissiles
goto cpuchoice
::-----------------------------------------------------------------
::-----------------------------------------------------------------












::-----------------------------------------------------------------
::-----------------------------------------------------------------
:: airstrike
:cpuairstrike
cls
if %cpuairstrike%==0 goto cpuchoice
set /a choice=%random% %%6
cls
echo airstrike heading to %country%
echo.
set /a cpuairstrike=%cpuairstrike%-1
::-----------------------------------------------------------------



::-----------------------------------------------------------------
echo /
timeout /t 1 >nu1
cls
echo airstrike heading to %country%
echo.
echo -
timeout /t 1 >nu1
cls
echo airstrike heading to %country%
echo.
echo \
timeout /t 1 >nu1
cls
echo airstrike heading to %country%
echo.
echo /
timeout /t 1 >nu1
::-----------------------------------------------------------------

if %radjam%==on goto cpunukemiss
if %choice%==2 goto cpuairstrikehit
if %choice%==3 goto cpuairstrikehit
if %choice%==4 goto cpuairstrikehit
if %choice%==5 goto cpuairstrikehit

::-----------------------------------------------------------------
:: if the airstrike miss's
echo.
echo miss!
pause
goto playerscreen
::-----------------------------------------------------------------




::-----------------------------------------------------------------
:: if the airstrike hits. (this is half/half)
:cpuairstrikehit
echo.
echo hit!
set /a user=%user%-250
echo.
echo %country% : health : %user%
pause
goto playerscreen
::-----------------------------------------------------------------



::-----------------------------------------------------------------
:: this is if the player has no airstrike.
:cpunoairstrike
goto cpuchoice
::-----------------------------------------------------------------
::-----------------------------------------------------------------






:cpumedic
cls
set /a choice=%random% %%4
echo.
set /a cpu=%cpu%+%choice%00
echo %cpuname% has gained %choice%00 health.
timeout /t 3 >nu1
goto playerscreens








::-----------------------------------------------------------------
::-----------------------------------------------------------------
:cpuweapon
cls
echo emeny is attempting to make a unkown weapon.
echo.
::-----------------------------------------------------------------

set /a choice=%random% %%5


::-----------------------------------------------------------------
timeout /t 3 >nu1

if %Choice%==1 goto cpunukemake
if %Choice%==2 goto cpumisslesmake
if %Choice%==3 goto cpuairstrikemake

echo emeny failed to make a weapon.
:cpunoweapon
echo the emeny failed to create a weapon.
pause
goto playerscreen
:cpunukemake
set /a choice=%random% %%5
if %choice%==0 goto cpunoweapon
set /a cpunuke=%cpunuke%+%choice%
echo emeny has made a unkown weapon!
pause
goto playerscreen
:cpumisslesmake
set /a choice=%random% %%6
if %choice%==0 goto cpunoweapon
echo emeny has made a unkown weapon!
set /a cpuMissiles=%cpuMissiles%+%choice%
pause
goto playerscreen
:cpuairstrikemake
set /a choice=%random% %%4
if %choice%==0 goto noweapon
echo emeny has made a unkown weapon!
set /a cpuairstrike=%cpuairstrike%+%choice%
pause
goto playerscreen
::--------------------------------------------------------------
::--------------------------------------------------------------





::--------------------------------------------------------------
::--------------------------------------------------------------
:: this is where the player selects a emeny
:emenysela
cls
echo.
echo select emeny to vs.
echo each emeny has differnt styles
echo.
echo [james]
echo andrew
echo.
choice /c wso
if %errorlevel% equ 1 call:emenysela
if %errorlevel% equ 2 call:emenyselanext
if %errorlevel% equ 3 call:james
:james
set cpuname=james
goto playerscreen



:emenyselanext
cls
echo.
echo select emeny to vs.
echo each emeny has differnt styles
echo.
echo james
echo [andrew]
echo.
choice /c wso
if %errorlevel% equ 1 call:emenysela
if %errorlevel% equ 2 call:emenyselanext
if %errorlevel% equ 3 call:andrew
:andrew
set cpuname=andrew
goto playerscreen
















:emenyselb
cls
echo.
echo select emeny to vs.
echo each emeny has differnt styles
echo.
echo [james]
echo andrew
echo sam
echo.
choice /c wso
if %errorlevel% equ 1 call:emenyselbnextnext
if %errorlevel% equ 2 call:emenyselbnext
if %errorlevel% equ 3 call:jamesb
:jamesb
set cpuname=james
goto playerscreen



:emenyselbnext
cls
echo.
echo select emeny to vs.
echo each emeny has differnt styles
echo.
echo james
echo [andrew]
echo sam
echo.
choice /c wso
if %errorlevel% equ 1 call:emenyselb
if %errorlevel% equ 2 call:emenyselbnextnext
if %errorlevel% equ 3 call:andrewb
:andrewb
set cpuname=andrew
goto playerscreen





:emenyselbnextnext
cls
echo.
echo select emeny to vs.
echo each emeny has differnt styles
echo.
echo james
echo andrew
echo [sam]
echo.
choice /c wso
if %errorlevel% equ 1 call:emenyselbnext
if %errorlevel% equ 2 call:emenyselb
if %errorlevel% equ 3 call:sam
:samb
set cpuname=sam
goto playerscreen




















:: ----------------------------------------------------------------
:: ------------------this is the store where player can buy power ups
:: ----------------------------------------------------------------
:store

set storefiva=4
set storefive=4
if %level%==1 set storefive=a
if %level%==2 set storefive=a
if %level%==3 set storefive=a
if %level%==4 set storefive=a
if %level%==1 set storefiva=a
if %level%==2 set storefiva=a
if %level%==3 set storefiva=a
if %level%==4 set storefiva=a
if %level%==5 set storefiva=a
if %level%==6 set storefiva=a
if %level%==7 set storefiva=a
if %level%==8 set storefiva=a
if %level%==9 set storefiva=a





cls
echo.
echo welcome to the store here you can buy powerups which you can used
echo while playing the game. you can only use one powerup perturn.
echo some powerups are locked in till you get to a certain level.
echo to know what some powerups do goto help.
echo cash : $%cash%
echo.
call :colorEcho 0e "powerup 1) 2 extra nuke - $4000 - %powerupnuke%"
echo.
echo.
call :colorEcho 0e "powerup 2) 500 health - $3000 - %poweruphealth%"
echo.
echo.
call :colorEcho 0e "powerup 3) x2 damage next attack - $5000 - %powerup2dam%"
echo.
echo.
if %storefive%==4 call :colorEcho 0e "powerup 4) rader jammer - $1000 - %powerupjam% - unlocked at level 5"
if %storefive%==a call :colorEcho 0C "LOCKED - REACH LEVEL 5 TO UNLOCK"
echo.
echo.
if %storefiva%==4 call :colorEcho 0e "powerup 5) comper virus - $9000 - %powerupvi% - unlocked at level 5"
if %storefiva%==a call :colorEcho 0C "LOCKED - REACH LEVEL 10 TO UNLOCK"
echo.
echo.

echo choose powerup to buy (1,2,3,4,5) or go to main meun with 9
set /p powchose=:
echo.
if %powchose%==1 goto pownuke
if %powchose%==2 goto powhealth
if %powchose%==3 goto pow2dam
if %powchose%==4 if %storefive%==4 goto powjam
if %powchose%==4 call :colorEcho 0C "CANT PURCHASE - LOCKED - LEVEL 5"
if %powchose%==4 echo.
if %powchose%==4 ECHO.
if %powchose%==5 if %storefiva%==4 goto powvi
if %powchose%==5 call :colorEcho 0C "CANT PURCHASE - LOCKED - LEVEL 10"
if %powchose%==5 echo.
if %powchose%==5 ECHO.
if %powchose%==5 pause
if %powchose%==9 goto mainup
GOTO store



:pownuke
set emcash=%cash%
set /a emcash=%emcash%-4000
if %emcash%==-1000 goto notencashnuke
if %emcash%==-2000 goto notencashnuke
if %emcash%==-3000 goto notencashnuke
if %emcash%==-4000 goto notencashnuke
set /a cash=%cash%-4000
> c:/users/"%USERNAME%"/"cash.txt" echo.%cash%
set /a powerupnuke=%powerupnuke%+1
> c:/users/"%USERNAME%"/"powerupnuke.txt" echo.%powerupnuke%
echo.
call :colorEcho 0a "you now have %powerupnuke% 2 extra nukes"
echo.
echo.
pause
goto store


:notencashnuke
echo.
call :colorEcho 0c "sadly you dont have Enough cash. you can get cash by wining games."
echo.
pause
goto store






:pow2dam
set emcash=%cash%
set /a emcash=%emcash%-5000
if %emcash%==-1000 goto notencashnuke
if %emcash%==-2000 goto notencashnuke
if %emcash%==-3000 goto notencashnuke
if %emcash%==-4000 goto notencashnuke
if %emcash%==-5000 goto notencashnuke
set /a cash=%cash%-5000
> c:/users/"%USERNAME%"/"cash.txt" echo.%cash%
set /a powerup2dam=%powerup2dam%+1
> c:/users/"%USERNAME%"/"powerup2dam.txt" echo.%powerup2dam%
echo.
call :colorEcho 0a "you now have %powerup2dam% 2x damage"
echo.
echo.
pause
goto store






:powhealth
set emcash=%cash%
set /a emcash=%emcash%-3000
if %emcash%==-1000 goto notencashnuke
if %emcash%==-2000 goto notencashnuke
if %emcash%==-3000 goto notencashnuke
if %emcash%==-4000 goto notencashnuke
set /a cash=%cash%-3000
> c:/users/"%USERNAME%"/"cash.txt" echo.%cash%
set /a poweruphealth=%poweruphealth%+1
> c:/users/"%USERNAME%"/"poweruphealth.txt" echo.%poweruphealth%
echo.
call :colorEcho 0a "you now have %poweruphealth% +500 health"
echo.
echo.
pause
goto store







:powjam
set emcash=%cash%
set /a emcash=%emcash%-1000
if %emcash%==-1000 goto notencashnuke
if %emcash%==-2000 goto notencashnuke
if %emcash%==-3000 goto notencashnuke
if %emcash%==-4000 goto notencashnuke
set /a cash=%cash%-1000
> c:/users/"%USERNAME%"/"cash.txt" echo.%cash%
set /a powerupjam=%powerupjam%+1
> c:/users/"%USERNAME%"/"powerupjam.txt" echo.%powerupjam%
echo.
if %powerupjam%==1 call :colorEcho 0a "you now have %powerupjam% rader jammer"
if not %powerupjam%==1 call :colorEcho 0a "you now have %powerupjam% rader jammers"
echo.
echo.
pause
goto store






:powvi
set emcash=%cash%
set /a emcash=%emcash%-9000
if %emcash%==-1000 goto notencashnuke
if %emcash%==-2000 goto notencashnuke
if %emcash%==-3000 goto notencashnuke
if %emcash%==-4000 goto notencashnuke
if %emcash%==-5000 goto notencashnuke
if %emcash%==-6000 goto notencashnuke
if %emcash%==-7000 goto notencashnuke
if %emcash%==-8000 goto notencashnuke
if %emcash%==-9000 goto notencashnuke
if %emcash%==-10000 goto notencashnuke
if %emcash%==-11000 goto notencashnuke
if %emcash%==-12000 goto notencashnuke
set /a cash=%cash%-9000
> c:/users/"%USERNAME%"/"cash.txt" echo.%cash%
set /a powerupvi=%powerupvi%+1
> c:/users/"%USERNAME%"/"powerupvi.txt" echo.%powerupvi%
echo.
if %powerupvi%==1 call :colorEcho 0a "you now have %powerupvi% virus"
if not %powerupvi%==1 call :colorEcho 0a "you now have %powerupvi% virus"
echo.
echo.
pause
goto store












::nothing underthis!
:colorEcho
echo off
"%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1i