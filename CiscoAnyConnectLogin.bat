@if (@CodeSection == @Batch) @then
@echo off
title Cisco AnyConnect login
mode con cols=60 lines=30
set SendKeys=CScript //nologo //E:JScript "%~F0"
cd "C:\Program Files (x86)\Cisco\Cisco Secure Client\UI"
start csc_ui.exe
timeout /t 7
%SendKeys% "{TAB 6}"
timeout /t 3
%SendKeys% "{DOWN 2}"
%SendKeys% "{ENTER}"
timeout /t 2
%SendKeys% "xcx2897"
%SendKeys% "{TAB}"
%SendKeys% "quj1#987"
%SendKeys% "{ENTER}"
REM goto :EOF
exit

@end


//JScript section

var WshShell = WScript.CreateObject("WScript.Shell");
WshShell.SendKeys(WScript.Arguments(0));
