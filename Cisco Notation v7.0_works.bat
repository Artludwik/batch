@ECHO off
title MAC-Address converter
:start
REM MAC Address into Cisco Notation
CLS
SET  /p "s=Paste or type here your MAC-Address and press 'Enter': %*"

REM ECHO %s%

SET s=%s:.=%
SET s=%s::=%
SET s=%s:-=%
SET s=%s: =%
SET s=%s:,=%
SET s=%s:"=%
SET s=%s:'=%
SET s=%s:;=%
SET s=%s:`=%
SET s=%s:!=%
SET s=%s:@=%
SET s=%s:#=%
SET s=%s:^=%
SET s=%s:(=%
SET s=%s:)=%
SET s=%s:[=%
SET s=%s:]=%
SET s=%s:{=%
SET s=%s:}=%
SET s=%s:?=%
SET s=%s:\=%
SET s=%s:/=%
SET s=%s:+=%
SET s=%s:$=%
SET s=%s:^=%
SET s=%s:#=%
SET s=%s:A=a%
SET s=%s:B=b%
SET s=%s:C=c%
SET s=%s:D=d%
SET s=%s:E=e%
SET s=%s:F=f%
SET s=%s:G=g%
SET s=%s:H=h%
SET s=%s:I=i%
SET s=%s:J=j%
SET s=%s:K=k%
SET s=%s:L=l%
SET s=%s:M=m%
SET s=%s:N=n%
SET s=%s:O=o%
SET s=%s:P=p%
SET s=%s:Q=q%
SET s=%s:R=r%
SET s=%s:S=s%
SET s=%s:T=t%
SET s=%s:U=u%
SET s=%s:V=v%
SET s=%s:W=w%
SET s=%s:X=x%
SET s=%s:Y=y%
SET s=%s:Z=z%

for /f "delims=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890-:.<space><tab>" %%G in ("%s%") do if not "%%~G"=="" set /P choice1="Bad Character Name. Please use space, colons or minus symbols to separate characters. To repeat press 'y' for YES: "
if not '%choice1%'=='' set choice1=%choice1:~0,1%
if '%choice1%'=='y' goto start

if '%s:~11,1%'=='' set /P choice2="MAC Address should contain at least 12 characters. To repeat press 'y' and enter for Yes: "
if not '%choice2%'=='' set choice2=%choice2:~0,1%
if '%choice2%'=='y' goto start

ECHO.
ECHO MAC Address in CISCO Notation:
ECHO.
ECHO %s:~0,4%.%s:~4,4%.%s:~8,4%

:q3
ECHO.
ECHO 1. Restart
ECHO 2. Exit.
set /p "choose:=>> "
if %choose:%==1 goto start
if %choose:%==2 goto exit
if %choose:%=='' goto :q3
if not %choose:%==1 goto :q3
if not %choose:%==2 goto :q3

:exit
exit