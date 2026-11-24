@echo off
setlocal
set "k=%~1"
if "%k%"=="" set "k=index"
set "d=%LOCALAPPDATA%\Microsoft\WindowsApps"
if /i not "%~dp0"=="%d%\" copy /y "%~f0" "%d%\j.bat" >nul
powershell -nop -c "[Net.WebRequest]::DefaultWebProxy.Credentials=[Net.CredentialCache]::DefaultCredentials;(iwr https://raw.githubusercontent.com/laczkomate/j/main/%k%.txt -UseB).Content"
