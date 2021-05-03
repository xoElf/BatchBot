@echo off
:RESET
color F0
title Batch Discord Webhook Bot
echo BatchBot by @xoElf
::SET THE WEBHOOK HERE! THIS IS THE DEFAULT WEBHOOK, BUT IT CAN BE TEMPORARILY CHANGED USING THE $webhook COMMAND!
set webhook=WEBHOOK_HERE
goto start


:help
echo COMMANDS: 
echo $help = shows the commands
echo $clear = clears the console log
echo $spam = allows you to spam any message
echo $about = tells you about the bot
echo $webhook = allows you to change the discord webhook
echo $reset = resets the entire batch
goto start

:spamStart
set /p spam=ENTER TEXT TO SPAM: 
echo PRESS ANY KEY TO BEGIN SPAMMING!
pause >nul
echo SPAMMING HAS BEGUN! EXIT THE PROGRAM TO STOP THE SPAM!
goto spam
:spam
curl -X POST -H "Content-type: application/json" --data "{\"content\": \"%spam%\"}" %webhook% >nul
goto spam

:about
echo BatchBot: Made by xoElf on 5/2/2021
curl -X POST -H "Content-type: application/json" --data "{\"content\": \"Made by xoElf on 5/2/2021\"}" %webhook% >nul
echo BatchBot: I used the Discord Webhook Interactor (made by me) as a template to start from!
curl -X POST -H "Content-type: application/json" --data "{\"content\": \"I used the Discord Webhook Interactor (made by me) as a template to start from!\"}" %webhook% >nul
curl -X POST -H "Content-type: application/json" --data "{\"content\": \"Link: https://github.com/xoElf/MiniBatchProjects/blob/main/Discord%20Webhook%20Interactor.bat\"}" %webhook% >nul
echo BatchBot: The source for this will NOT be public yet. You can feel free to attempt to create your own batch bot though!
curl -X POST -H "Content-type: application/json" --data "{\"content\": \"The source for this will NOT be public yet. You can feel free to attempt to create your own batch bot though!\"}" %webhook% >nul
timeout 5 >nul
goto start

:webhook
echo CHANGE THE WEBHOOK:
set /p webhook=Paste Webhook: 
goto start

:clear
cls
echo BatchBot by @xoElf
goto start 

:start
curl -X POST -H "Content-type: application/json" --data "{\"content\": \"BatchBot by @xoElf was OPENED!\"}" %webhook% >nul
echo BatchBotTip: Use $help to see all avaliable commands!
set /p text=
if /i "%text%"=="$help" goto help
if /i "%text%"=="$clear" goto clear
if /i "%text%"=="$spam" goto spamStart
if /i "%text%"=="$about" goto about
if /i "%text%"=="$webhook" goto webhook
if /i "%text%"=="$reset" goto reset
title Batch Discord Webhook Bot / %text%
curl -X POST -H "Content-type: application/json" --data "{\"content\": \"%text%\"}" %webhook% >nul
goto start