@echo off

cd "C:\Program Files (x86)\Microsoft\Edge\Application\"
start msedge.exe
TIMEOUT 2

cd "C:\Program Files\VideoLAN\VLC\"
start vlc.exe

exit
