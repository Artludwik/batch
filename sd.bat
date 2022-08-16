@echo off
echo +++++++++++++++++++++++++++++++++++++++++++++++++++++
echo Programme shut down the machine at the specific time.
echo +++++++++++++++++++++++++++++++++++++++++++++++++++++
@echo off
echo.
echo %time%
:W
if "%time:~0,2%"=="17" goto :X 
goto :W
:X
shutdown -s -t 60
