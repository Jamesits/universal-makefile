@echo off

Set %PATH% = "C:\MinGW\bin;" + %PATH%

@setlocal EnableDelayedExpansion
for /f "delims=" %%i in ('"dir /a/s/b/on %1"') do (
set file=%%~fi
set file=!file:%cd%\=!
::set file=!file:\=/!
make exec SRC=!file! PROGRAM=!file:~0,-2!.exe
)
@endlocal

pause
