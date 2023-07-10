@echo off
color 7

:login
cls 
echo ***********************************************
echo                 LOGIN USER         
echo ***********************************************
echo.
set /p name=      User     :
set /p password=  Password :
if %password% ==  password (
	goto begin 
) else (
	echo Password salah 
	set /p x= enter......!!!
	goto login 
)
