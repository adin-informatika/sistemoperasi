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
	cls
	echo --------------------------------
	echo           PILHAN MENU
	echo --------------------------------
	echo Menu Akademik
	echo Menu Perbaikan Komputer
	echo Menu Jaringan Komputer
	echo Menu Aplikasi
	echo Menu Setting
	echo Keluar
	echo.
:akademik
	cls
	echo Nama :
	echo NIM :
	echo Prodi :
:perbaikan_komputer
	cls
	echo --------------------------------
	echo Menu Perbaikan Komputer
	echo --------------------------------
:jaringan_komputer
	cls
	echo --------------------------------
	echo Menu Jaringan Komputer
	echo --------------------------------
	echo cek ip
	echo ping domain

