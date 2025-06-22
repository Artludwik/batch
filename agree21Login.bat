@if (@CodeSection == @Batch) @then
@echo off
title agree21 login
mode con cols=120 lines=30
set SendKeys=CScript //nologo //E:JScript "%~F0"
start https://agree21itsm.rz.bankenit.de/vmweb/vmweb
timeout /t 7
%SendKeys% "{ENTER}"
timeout /t 7

%SendKeys% "{TAB}"
%SendKeys% "{ENTER}"
timeout /t 6

%SendKeys% "{TAB 12}"
REM %SendKeys% "{TAB}"
%SendKeys% "{ENTER}"
REM goto :EOF
exit

@end


//JScript section

var WshShell = WScript.CreateObject("WScript.Shell");
WshShell.SendKeys(WScript.Arguments(0));
