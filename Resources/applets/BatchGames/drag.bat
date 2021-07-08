@echo off
:menu
color 0a
cls
echo DRAGON KILL
echo Choose the number:
echo 1. Start game
echo 2. Exit
echo 3. Instructions
echo Made by CodeSmartz and I_boom5245
set /p menu=
if '%menu%'=='1' (
goto sets
)
if '%menu%'=='2' (
exit
)
if '%menu%'=='3' (
goto instruct
)else goto menu
:sets
cls
echo Hello! What is your name? (one word)
set /p name=
if '%name%'=='batchfileuser' (
goto Eastereggone
)
set /a money=1000
set /a health=1000
set /a potions=0
set /a damage=2
set /a dd=5
set /a dh=25
set /a moneygain=50
set /a levels=0
set /a new=%dh%+5
set /a buy=0
set /a dragon=0
set /a five=0
set /a avail=0
:start
cls
echo %name%'s money:%money%
echo %name%'s health:%health%
echo Number of healing potions:%potions%
echo Choose the number:
echo 1. Venture onward to the dragon
echo 2. Go to Store
echo 3. Go to Title screen
echo 4. Drink heal potion
echo 5. See Achievements
set /p choose=
if '%choose%'=='1' (
goto fight
)
if '%choose%'=='2' (
goto store
)
if '%choose%'=='3' (
goto menu
)
if '%choose%'=='4' (
goto nextx
)
if '%choose%'=='5' (
goto trophies
)
if '%choose%'=='money' (
goto eastereggtwo
)else goto start
:fight
cls
echo Health:%health%
echo Dragon's Health:%new%
echo You have encountered a dragon
pause
cls
echo Press enter to hit the dragon
set /p hit=
set /a new=%new%-%damage%
if %new% LSS 1 (
goto defeat
)
cls
echo Health:%health%
echo Dragon's Health:%new%
echo You have hit the dragon
echo The dragon lost %damage% health
pause
cls
echo The dragon has hit you!
set /a health=%health%-%dd%
if %health% LSS 1 (
goto defeated
)
pause
cls
goto fight
:defeat
cls
set /a dh=%dh%+20
set /a new=%dh%
set /a money=%money%+%moneygain%
set /a levels=%levels%+1
set /a dragon=1
if %levels%==5 (
set /a five=1
)
echo You defeated the dragon and earned $50 .
echo Congratz
ping localhost -n 5 >nul
pause
goto start
:defeated
cls
echo Sorry %name% but you died!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
echo RIP
echo You have killed %levels% dragons
ping localhost -n 5 >nul
pause
goto menu
:store
cls
echo Money:%money%
echo Welcome to the store!
echo Choose:
echo 1.Sword Upgrade	$700
echo 2.Heal Potion	$30
echo 3.Leave Store
set /p again=
if '%again%'=='1' (
goto buysword
)
if '%again%'=='2' (
goto buyheal
)
if '%again%'=='3' (
goto start
)else goto store

:buysword
cls
set /a money=%money%-700
if %money% LSS 0 (
echo You cant buy that!
set /a money=%money%+700
pause
goto store
)else (
set /a damage=%damage%+4
set /a buy=1
echo You have upgraded your sword
pause
goto store
)
:buyheal
cls
set /a money=%money%-30
if %money% LSS 0 (
echo You cant buy that!
set /a money=%money%+30
pause
goto store
)else (
set /a buy=1
set /a potions=%potions%+1
echo You have bought one heal potion
pause
goto store
)
:nextx
cls
if %potions%==0 (
echo Sorry. You dont have any potions.
pause
goto start
)else (
set /a health=%health%+15
set /a potions=%potions%-1
echo You have used one potion
pause
goto start
)
:instruct
cls
echo When you start you will see the amount of money and health you have. 
echo There will be a list of things you can do:
echo 1. Venture onward to dragon
echo 2. Go to Store
echo 3. Go to Title Screen
echo 4. Drink health potion
pause
cls
echo You will choose one
echo Your goal of the game is to fight dragons until you die
pause
cls
echo Lastly there are many easter eggs
echo All easter eggs are one word . . . .
echo Hint: Everything you have to type in this game will only be one word
echo DO NOT type any spaces in this game. . . .
echo GOOD LUCK
pause
goto menu
:Eastereggone
cls
echo Easter Egg
echo You have typed in your name as batchfileuser
echo batchfileuser is my typical Video Game Account Username therefore you will be rewarded $2000
set /a money=%money%+2000
pause
goto start
:eastereggtwo
cls
set /a avail=%avail%+1

if %avail% LSS 2 (
echo You have discovered an easter egg.
echo +10000 money
set /a money=%money%+10000
pause
goto start
)else goto no
:no
cls
echo You have already found this easter egg
pause
goto start
:trophies
cls
echo If the achievement says '1' that means you completed it.
echo If the achievement says '0' that means you have not completed it.
echo Killed a dragon: %dragon%
echo Buy Something: %buy%
echo Kill Five Dragons: %five%
echo.
echo.
echo Note: Everytime you restart the game, your progress resets
pause
goto start