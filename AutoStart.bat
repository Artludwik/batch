@echo off

:: Programme starts selected applications in a planned manner
:: Creator Artur Ulaszek

cd "C:\Program Files (x86)\Microsoft\Edge\Application\"
start msedge.exe
TIMEOUT 2

cd "C:\Program Files\VideoLAN\VLC\"
start vlc.exe

exit
