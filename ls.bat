@echo off
setlocal
set prm=_

if /i "%1"=="-l" shift /1 && set prm=/Q
if /i "%1"=="-a" shift /1 && set prm=/W /A
if /i "%1"=="-la" shift /1 && set prm=/Q /A

if "%prm%"=="_" (
	for /F "usebackq" %%t IN (`dir /B %*`) do (
		set /P X="%%t  " <NUL
	)
	echo.
) else (
	dir /ON %prm% %1 %2 %3
)
