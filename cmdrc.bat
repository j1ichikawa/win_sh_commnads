@echo off
DOSKEY cd=C:\bin\cd.bat $*
DOSKEY settime=time $*
DOSKEY time=C:\bin\time $*
DOSKEY date=C:\bin\date $*

DOSKEY pwd=cd
DOSKEY mv=ren $*
DOSKEY rm=del $*
DOSKEY cp=copy $*
DOSKEY env=set

DOSKEY ll=ls -l

prompt %USERDOMAIN%%%
set PATH=C:\bin;%PATH%
cd.bat .

