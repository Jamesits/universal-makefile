@echo off

Set PATH=C:\MinGW\bin;C:\MinGW\msys\1.0\bin;%PATH%

@setlocal EnableDelayedExpansion
for /f "delims=" %%i in ('"dir /a/s/b/on *.c"') do (
set file=%%~fi
set file=!file:%cd%\=!
::set file=!file:\=/!
make SRC=!file! PROGRAM=!file:~0,-2!.exe
)
@endlocal

pause
