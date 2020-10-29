@echo off
if "%1" neq "1" (
>"%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\StartUp\clash.vbs" echo set WshShell = WScript.CreateObject^(^"WScript.Shell^"^)
>>"%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\StartUp\clash.vbs" echo WshShell.Run ^"%~0 1^",0
start /d "%ALLUSERSPROFILE%\Microsoft\Windows\Start Menu\Programs\StartUp" clash.vbs
exit
)

taskkill /f /t /im clash-windows-amd64.exe
cd %~dp0subconverter
subconverter.exe -g
echo mode: global >> %~dp0clash\config.yaml
%~dp0clash\clash-windows-amd64.exe -d %~dp0clash\

exit