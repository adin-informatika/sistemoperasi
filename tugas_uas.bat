@echo off

rem ========== TUGAS UAS SISTEM OPERASI ==========

:login
	cls
	echo --------------------------------
	echo            LOGIN USER
	echo --------------------------------
	set /p name=     Masukan User     : 
	set /p password= Masukan Password : 

	if %password% == 123 goto begin
	else

:begin

