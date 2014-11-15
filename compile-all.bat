@echo off

Set %PATH% = "C:\MinGW\bin;" + %PATH%

for /f "delims=\" %%a in ('dir /b /a-d /o-d "*.c"') do (
  make SRC=%%a PROGRAM=%%a
)

pause
