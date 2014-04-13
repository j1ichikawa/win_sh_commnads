@echo off
@setlocal
if %1. == . (
	for /F "usebackq" %%s in (`date /T`) DO SET DATE=%%s
	for /F "usebackq" %%s in (`date /T`) DO SET TIME=%%s
	echo %DATE% %TIME%
) else (
	date %*
)
exit /B
