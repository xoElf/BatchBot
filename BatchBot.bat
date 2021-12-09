@echo off
:STARTUP
color F0
cls
title BatchBot
echo WELCOME!
echo.
echo MADE BY XOELF
echo ALL COMMANDS MUST BE TYPED INTO THE COMMAND CONSOLE (NOT THE DISCORD CLIENT)
set username=RealHuman
::SET THE WEBHOOK HERE! THIS IS THE DEFAULT WEBHOOK, BUT IT CAN BE TEMPORARILY CHANGED USING THE $webhook COMMAND!
set webhook=https://discord.com/api/webhooks/839654307783114752/HS55yPPobKMeMbyE97FilP3jGh2B93ExX3iPCP40DnmRg7e-XFOlzcaZsbaeHPEOLyWO
set name=BatchBot
set pic=https://cdn.discordapp.com/attachments/839654283830099968/843919159641112606/hqdefault.jpg
goto help


:help
echo.
echo ================================================================
echo COMMAND LIST
echo ================================================================
echo UTILITY:
echo $help = shows the commands
echo $webhook = allows you to change the discord webhook
echo $username = allows you to change your username
echo $debug = sends some debug info to the webhook
echo $reset = resets the entire batch
echo $clear = clears the console log
echo $systeminfo = sends sensitive information about your PC to the webhook
echo $about = tells you about the bot
echo ================================================================
echo INTERACTIVE:
echo $rps = plays rock paper scissors
echo $random = selects a random number between 1-100
echo $calculator = built-in calculator
echo $spam = allows you to spam any message to the webhook
echo ================================================================
echo OTHER:
echo $discord = sends the discord in chat
echo $spotify = shows you Elf's Spotify playlists
echo $meme = sends a meme to the webhook
echo ================================================================
echo.
goto start

:webhook
echo.
echo CHANGE THE WEBHOOK:
set /p webhook=Paste the Webhook: 
echo.
goto start


:username
echo.
echo CHANGE YOUR USERNAME:
set /p username=Username: 
echo.
goto start


:discord
echo.
set name=BatchBot
set pic=https://cdn.discordapp.com/attachments/839654283830099968/843919159641112606/hqdefault.jpg
set message=https://discord.gg/Rz747kGqqN
curl -H "Content-Type: application/json" -d "{\"username\": \"%name%\", \"content\":\"%message%\", \"avatar_url\":\"%pic%\"}" %webhook%
echo BatchBot: DISCORD INVITE WAS SENT IN THE CHAT!
echo.
goto start 


:spamStart
echo.
echo (YOU CAN SPAM PING @everyone OR @here IF YOU WANT TO PING PEOPLE!)
set /p spam=ENTER TEXT TO SPAM: 
echo PRESS ANY KEY TO BEGIN SPAMMING!
pause >nul
echo SPAMMING HAS BEGUN! EXIT THE PROGRAM TO STOP THE SPAM!
goto spam
:spam
curl -X POST -H "Content-type: application/json" --data "{\"content\": \"%spam%\"}" %webhook% >nul
goto spam


:about
echo.
echo BatchBot: Made by xoElf on 5/2/2021
curl -X POST -H "Content-type: application/json" --data "{\"content\": \"Made by xoElf on 5/2/2021\"}" %webhook% >nul
echo BatchBot: I used the Discord Webhook Interactor (made by me) as a template to start from!
curl -X POST -H "Content-type: application/json" --data "{\"content\": \"I used the Discord Webhook Interactor (made by me) as a template to start from!\"}" %webhook% >nul
curl -X POST -H "Content-type: application/json" --data "{\"content\": \"Link: https://github.com/xoElf/MiniBatchProjects/blob/main/Discord%20Webhook%20Interactor.bat\"}" %webhook% >nul
echo BatchBot: The source for this will NOT be public yet. You can feel free to attempt to create your own batch bot though!
curl -X POST -H "Content-type: application/json" --data "{\"content\": \"The source for this will NOT be public yet. You can feel free to attempt to create your own batch bot though!\"}" %webhook% >nul
echo.
timeout 5 >nul
goto start


:spotify
echo.
echo sending Elf's Spotify playlists to the server...
curl -X POST -H "Content-type: application/json" --data "{\"content\": \"**Elf's Spotify Playlists:**\"}" %webhook% >nul
curl -X POST -H "Content-type: application/json" --data "{\"content\": \"$uicideboy$: https://open.spotify.com/playlist/2iDyayQeBK2xSFh3Z5JMMz?si=UWJp9SdITfmBL8rGF2-8uw\nLil Darkie: https://open.spotify.com/playlist/7p5W6vXBvdLLQZXkyLwYLr?si=y545BlI7SqC4N-SAc8VVjA\nX: https://open.spotify.com/playlist/7p5W6vXBvdLLQZXkyLwYLr?si=y545BlI7SqC4N-SAc8VVjA\nOther Artists: https://open.spotify.com/playlist/4KdVDitOmHveUZWVxMDMd3?si=HLZ5EN45Se6fpKsxqfgfPw\"}" %webhook% >nul
echo BatchBot: Done!
echo.
timeout 1 >nul
goto start


:irwin
curl -X POST -H "Content-type: application/json" --data "{\"content\": \"https://cdn.discordapp.com/attachments/803283902813831231/838557669177425920/unknown.png\"}" %webhook% >nul
echo BatchBot: Done!
goto start


:webhook
echo.
echo CHANGE THE WEBHOOK:
set /p webhook=Paste Webhook: 
echo.
goto start

:systeminfo
echo.
echo THIS COMMAND WILL SEND SENSITIVE INFORMATION TO THE WEBHOOK. ARE YOU SURE YOU WANT TO CONTINUE?
pause>nul
echo ARE YOU 100% SURE?
pause>nul
for /f "tokens=2 delims==" %%J in ('wmic csproduct get uuid /value') do set hwid=%%J
Find /I "%hwid%" {Location of file} > {Location of confirmation file}
For /f "tokens=1,2* delims=," %%G in ({Location of confirmation file}) do set HN=%%H
wmic computersystem where caption='%computername%' rename %HN%` 
del {Location
for /f "tokens=2 delims==" %%J in ('wmic diskdrive get serialnumber /value') do set diskdrive=%%J
Find /I "%diskdrive%" {Location of file} > {Location of confirmation file}
For /f "tokens=1,2* delims=," %%G in ({Location of confirmation file}) do set HN=%%H
wmic computersystem where caption='%computername%' rename %HN%` 
del {Location
for /f "tokens=2 delims==" %%J in ('wmic baseboard get serialnumber /value') do set baseboard=%%J
Find /I "%baseboard%" {Location of file} > {Location of confirmation file}
For /f "tokens=1,2* delims=," %%G in ({Location of confirmation file}) do set HN=%%H
wmic computersystem where caption='%computername%' rename %HN%` 
del {Location
for /f "tokens=2 delims==" %%J in ('wmic cpu get serialnumber /value') do set cpu=%%J
Find /I "%cpu%" {Location of file} > {Location of confirmation file}
For /f "tokens=1,2* delims=," %%G in ({Location of confirmation file}) do set HN=%%H
wmic computersystem where caption='%computername%' rename %HN%` 
del {Location
for /f "tokens=2 delims==" %%J in ('wmic bios get serialnumber /value') do set bios=%%J
Find /I "%bios%" {Location of file} > {Location of confirmation file}
For /f "tokens=1,2* delims=," %%G in ({Location of confirmation file}) do set HN=%%H
wmic computersystem where caption='%computername%' rename %HN%` 
del {Location
for /f "delims=[] tokens=2" %%a in ('ping -4 -n 1 %ComputerName% ^| findstr [') do set ip=%%a
curl -X POST -H "Content-type: application/json" --data "{\"content\": \"Opened on: `%date%` at `%time%`\nPC NAME: `%computername%`\nIP Address: `%ip%`\nHWID: `%hwid%`\nDiskDrive: `%diskdrive%`\nBaseBoard: `%baseboard%`\nCPU: `%cpu%`\nBIOS: `%bios%`\n\"}" %webhook%
cls
goto help

:calculator
set /p sum=Enter a math equation: 
set /a ans=%sum%
if /i "%sum%"=="$start" goto start
echo %sum% = %ans%
curl -X POST -H "Content-type: application/json" --data "{\"content\": \"The answer to %sum% is %ans%\"}" %webhook%
goto start

:pinger
set /p PINGER=Enter IP To Ping: 
curl -X POST -H "Content-type: application/json" --data "{\"content\": \"BatchBot is pinging: %pinger%\"}" %webhook% >nul
:top
ping -n 1 %PINGER% | find "TTL="
title BatchBot // Pinging: %PINGER%
if errorlevel 1 (echo %pinger% IS DOWN!)
if errorlevel 1 (curl -X POST -H "Content-type: application/json" --data "{\"content\": \"The IP [%pinger%] is down!\"}" %webhook%) >nul
ping -t 2 0 10 127.0.0.1 >nul
goto top


:random
set /a num=%random% %%999
echo BatchBot is selecting a random number between 1 and 1000...
curl -X POST -H "Content-type: application/json" --data "{\"content\": \"BatchBot is selecting a random number between 1 and 1000...\"}" %webhook% >nul
timeout 3 >nul
echo BatchBot has selected %num%!
curl -X POST -H "Content-type: application/json" --data "{\"content\": \"BatchBot has selected %num%!\"}" %webhook% >nul
timeout 3 >nul
goto start


:rps
curl -X POST -H "Content-type: application/json" --data "{\"content\": \"BatchBot was challanged to play Rock, Paper, Scissors!\"}" %webhook% >nul
SET /A BatchBotU=%RANDOM% %% 3 + 1
SET /P PLAYER=Choose 1 (rock), 2 (paper), 3 (scissors): 
goto CPUTYPE
:TYPE2
echo.
echo You chose:%PLAYERT%
curl -X POST -H "Content-type: application/json" --data "{\"content\": \"%username% chose %playert%!\"}" %webhook% >nul
echo BatchBot chose: %CPUT%
curl -X POST -H "Content-type: application/json" --data "{\"content\": \"BatchBot chose %CPUT%!\"}" %webhook% >nul
echo.
SET /A WINNER=(%BatchBotU% - %PLAYER% + 3) %% 3
IF %WINNER% EQU 1 (
    echo BatchBot Won!
	curl -X POST -H "Content-type: application/json" --data "{\"content\": \"BatchBot Won!\"}" %webhook% >nul
	echo.
	goto start
) ELSE (
IF %WINNER% EQU 0 (
    echo Its a draw!
	curl -X POST -H "Content-type: application/json" --data "{\"content\": \"It was a draw!\"}" %webhook% >nul
	echo.
	goto start
) ELSE (
    echo You won!
		curl -X POST -H "Content-type: application/json" --data "{\"content\": \"%username% Won!\"}" %webhook% >nul
	echo.
	goto start
))
:CPUTYPE
    IF %BatchBotU% EQU 1 (
        SET CPUT="ROCK"
    ) ELSE (
    IF %BatchBotU% EQU 2 (
        SET CPUT="PAPER"
    ) ELSE (
        SET CPUT="SCISSORS"
    ))
    GOTO PLAYERTYPE

:PLAYERTYPE
    IF %PLAYER% EQU 1 (
        SET PLAYERT="ROCK"
    ) ELSE (
    IF %PLAYER% EQU 2 (
        SET PLAYERT="PAPER"
    ) ELSE (
        SET PLAYERT="SCISSORS"
    ))
goto type2


:roll
echo.
echo Batchbot is Rolling the Dice!
curl -X POST -H "Content-type: application/json" --data "{\"content\": \"Batchbot is Rolling the Dice!\"}" %webhook%
set /A dice=%random% %% 6 + 1
echo The dice landed on %dice%
curl -X POST -H "Content-type: application/json" --data "{\"content\": \"The dice landed on %dice%\"}" %webhook%
echo.
goto start

:debug
curl -X POST -H "Content-type: application/json" --data "{\"content\": \"DEBUG COMMAND WAS RAN ON: `%date%` at `%time%`\nPC NAME: `%computername%`\n\"}" %webhook%


:meme
set /A meme=%random% %% 3 + 1
	IF %meme% EQU 1 (
		echo Meme was sent!
		set message=`Free Meme:` https://youtu.be/JYcqx2lc90s
		curl -H "Content-Type: application/json" -d "{\"username\":\"%name%\", \"content\":\"%message%\", \"avatar_url\":\"%pic%\"}" %webhook%
		echo.
		goto start
	) ELSE (
	IF %meme% EQU 2 (
		echo Meme was sent!
		set message=`Free Meme:` https://youtu.be/CYNHG2-eH-A
		curl -H "Content-Type: application/json" -d "{\"username\":\"%name%\", \"content\":\"%message%\", \"avatar_url\":\"%pic%\"}" %webhook%
		echo.
		goto start
	) ELSE (
		echo Meme was sent!
		set message=`Free Meme:` https://youtu.be/XiZjDCQR1XM
		curl -H "Content-Type: application/json" -d "{\"username\":\"%name%\", \"content\":\"%message%\", \"avatar_url\":\"%pic%\"}" %webhook%
		echo.
		goto start
	))
goto start

:test
::set WEBHOOK=


:clear
cls
echo MADE BY XOELF! CREDIT IF USED!
goto help

:start
set /p text=
if /i "%text%"=="$help" goto help
if /i "%text%"=="$username" goto username
if /i "%text%"=="$discord" goto discord
if /i "%text%"=="$clear" goto clear
if /i "%text%"=="$spam" goto spamStart
if /i "%text%"=="$about" goto about
if /i "%text%"=="$spotify" goto spotify
if /i "%text%"=="$webhook" goto webhook
if /i "%text%"=="$systeminfo" goto systeminfo
if /i "%text%"=="$calculator" goto calculator
if /i "%text%"=="$pinger" goto pinger
if /i "%text%"=="$rps" goto rps
if /i "%text%"=="$roll" goto roll
if /i "%text%"=="$random" goto random
if /i "%text%"=="$debug" goto debug
if /i "%text%"=="$meme" goto meme
if /i "%text%"=="$test" goto test
if /i "%text%"=="$reset" goto startup
title BatchBot - %text%
curl -H "Content-Type: application/json" -d "{\"username\": \"%name%\", \"content\":\"%text%\", \"avatar_url\":\"%pic%\"}" %webhook%
goto start

::OLD CODE

::OLD CURL
::curl -X POST -H "Content-type: application/json" --data "{\"content\": \"%text%\"}" %webhook% >nul

:NEVERTOUCH
goto startup

set message=‎‎
curl -H "Content-Type: application/json" -d "{\"username\": \"%name%\", \"content\":\"%message%\", \"avatar_url\":\"%pic%\"}" %webhook%