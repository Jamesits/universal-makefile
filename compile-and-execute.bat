@echo off

REM 这里强制设定了 GCC 路径，Path 正常的可以删掉下一行。
Set %PATH% = "C:\MinGW\bin;" + %PATH%

make exec
pause
