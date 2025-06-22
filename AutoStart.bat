@echo off
cls
cd "C:\Users\xcx2897\Desktop\Scripts"
start CiscoAnyConnectLogin.bat
timeout 20

cd "C:\Users\xcx2897\AppData\Local\Google\Chrome\Application\"
start /max chrome.exe
timeout 1

cd "C:\Users\xcx2897\Desktop\Neuer Ordner"
start Clock.bat
timeout 1

cd "C:\Program Files (x86)\Microsoft\Edge\Application\"
start /MAX msedge.exe
timeout 1

cd "C:\Users\xcx2897\AppData\Local\Programs\Opera\"
start /MAX launcher.exe
timeout 1

cd "C:\Program Files (x86)\Microsoft Office\root\Office16\"
start /MAX ONENOTE.EXE
timeout 1

cd "C:\Program Files (x86)\Microsoft Office\root\Office16\"
start /MAX OUTLOOK.EXE
timeout 1

cd "C:\Users\xcx2897\Desktop\Neuer Ordner\"
start sd_4.00.bat
timeout 1

cd "C:\Users\xcx2897\AppData\Local\Microsoft\Teams\"
start /MAX Update.exe --processStart "Teams.exe"
timeout 19

cd "C:\Users\xcx2897\Desktop\Scripts"
start agree21Login.bat
timeout 29

cd "C:\Users\xcx2897\Desktop\Scripts" 
start LotusNotesLogin.bat
timeout 1

exit
pause