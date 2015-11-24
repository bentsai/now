@ECHO off
SETLOCAL

IF [%1] NEQ [] goto s_start

ECHO Prints `now` entry
ECHO:
ECHO Syntax
ECHO:	NOW The message goes here
GOTO :eof

:s_start
:: Get the date/time
FOR /f %%a in ('WMIC OS GET LocalDateTime ^| find "."') DO Set _DTS=%%a
SET _datetime=%_DTS:~0,4%-%_DTS:~4,2%-%_DTS:~6,2% %_DTS:~8,2%:%_DTS:~10,2%

ECHO:	- %_datetime% ^| %*
