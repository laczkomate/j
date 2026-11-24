@echo off
setlocal
set "k=%~1"
if "%k%"=="" set "k=index"
set "d=%LOCALAPPDATA%\Microsoft\WindowsApps"
if /i "%k%"=="torol" (del /q "%USERPROFILE%\j.bat" 2>nul & echo A j parancs torolve errol a geprol. & (goto) 2>nul & del /q "%d%\j.bat" "%~f0" 2>nul)
if /i not "%~dp0"=="%d%\" copy /y "%~f0" "%d%\j.bat" >nul
powershell -nop -c "[Net.WebRequest]::DefaultWebProxy.Credentials=[Net.CredentialCache]::DefaultCredentials;(iwr https://raw.githubusercontent.com/laczkomate/j/main/%k%.txt -UseB).Content"
