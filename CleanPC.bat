@echo off
color 0a
echo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
echo ++++++++ It clean up Temporary Files, Your Bin and does Flushdns command +++++++++
echo ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
title CleanPC
pause
cd %temp%
rd /s /q .
pause
cd C:\Users\wot\Puplit\Kosz - skrót.lnk
rd /s /q .
pause
ipconfig /flushdns
pause