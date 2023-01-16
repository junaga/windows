ECHO off
ECHO Uninstalling all $MSFT bloatware desktop apps
ECHO:

SET /A count = 0

REM loop through the lines of `./uninstall.txt` ignore `#` comments
FOR /F "eol=# tokens=*" %%N in (uninstall.txt) do (
	ECHO Removing: "%%N"
	winget.exe uninstall --silent --purge --exact --name "%%N"
	SET /A count += 1
)

ECHO Uninstalled %count% packages
ECHO:

PAUSE
