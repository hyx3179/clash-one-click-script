@echo off
taskkill /f /t /im clash-windows-amd64.exe
cd %~dp0subconverter
subconverter.exe -g
echo mode: global >> %~dp0clash\config.yaml
start /d "%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\StartUp" clash.vbs
exit