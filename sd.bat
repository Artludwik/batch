@echo off
echo %time%
:W
if "%time:~0,2%"=="17" goto :X 
goto :W
:X
shutdown -s -t 60