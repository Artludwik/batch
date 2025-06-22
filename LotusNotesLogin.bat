@if (@CodeSection == @Batch) @then
@echo off
title Lotus Notes Login
mode con cols=60 lines=30
set SendKeys=CScript //nologo //E:JScript "%~F0"
start notes.exe
timeout /t 4

%SendKeys% "BQLQETUAMWWL"
%SendKeys% "{ENTER}"
REM goto :EOF
exit

@end


//JScript section

var WshShell = WScript.CreateObject("WScript.Shell");
WshShell.SendKeys(WScript.Arguments(0));
