@echo off
setlocal
:loop
if "%1" == "" exit /b
set COUNT=0
for /F %%I in (%1) do set /A COUNT+=1
echo %COUNT% %1
shift
goto loop
