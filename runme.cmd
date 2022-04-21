@echo off
title JPEGView and SumatraPDF Configurator
color f0
fltmc 1>nul 2>nul || (
  cd /d "%~dp0"
  cmd /u /c echo Set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && %~s0 %_Args%", "", "runas", 1 > "%temp%\GetAdmin.vbs"
  "%temp%\GetAdmin.vbs"
  del /f /q "%temp%\GetAdmin.vbs" 1>nul 2>nul
  exit
)
cls
echo Creating configuration files...
mkdir C:\Users\%username%\AppData\Roaming\JPEGView
copy "%~dp0bin\JPEGView.ini" "C:\Users\%username%\AppData\Roaming\JPEGView\JPEGView.ini"
cls
echo Creating configuration files...
copy "%~dp0bin\SumatraPDF-settings.txt" "C:\Users\%username%\AppData\Local\SumatraPDF\SumatraPDF-settings.txt"
cls
echo JPEGView and SumatraPDF have now been configured.
echo.
echo Visit https://sysconf16.github.io/ for more resources.
pause
exit