@echo off

rem ========== TUGAS UAS SISTEM OPERASI ==========

:login
	cls
	echo --------------------------------
	echo            LOGIN USER
	echo --------------------------------
	set /p name=     Masukan User     : 
	set /p password= Masukan Password : 

	if "%password%" == "" goto menu_password
	if %password% == 123 (goto begin) else (goto menu_password)

	:menu_password
		cls
		echo.
		echo Password salah
		echo.
		echo [88] Kembali
		echo [99] Keluar
		echo.
		set /p pilihan= Masukan pilihan nomor : 

		if "%pilihan%" == ""  goto login
		if %pilihan%   == 88  goto login
		if %pilihan%   == 99 (goto exit) else (goto login)





:begin
	cls
	echo --------------------------------
	echo           PILHAN MENU
	echo --------------------------------
	echo [N1] Menu Akademik
	echo [N2] Menu Perbaikan Komputer
	echo [N3] Menu Jaringan Komputer
	echo [N4] Menu Aplikasi
	echo [N5] Menu Setting
	echo [99] Keluar
	echo.

	set pilihan= x
	set /p pilihan= Masukan pilihan nomor : 
	if "%pilihan%" == "N1" goto akademik
	if "%pilihan%" == "N2" goto perbaikan_komputer
	if "%pilihan%" == "N3" goto jaringan_komputer
	if "%pilihan%" == "N4" goto aplikasi
	if "%pilihan%" == "N5" goto setting
	if  %pilihan%  == 99   goto exit
	if "%pilihan%" == ""  (goto begin) else (goto begin)





:akademik
	cls
	echo --------------------------------
	echo          MENU AKADEMIK
	echo --------------------------------
	echo Nama     : M. Mansyuru Adin
	echo NIM      : 20122069
	echo Jurusan  : Teknik Informatika
	echo Fakultas : Desain dan Komputer
	echo --------------------------------
	type file_akademik.txt
	echo.
	echo [88] Kembali
	echo [99] Keluar
	echo.

	set pilihan= x
	set /p pilihan= Masukan pilihan nomor : 
	if "%pilihan%" == ""  goto akademik
	if  %pilihan%  == 88  goto begin
	if  %pilihan%  == 99  goto exit
	if "%pilihan%" == "" (goto akademik) else (goto akademik)





:perbaikan_komputer
	cls
	echo --------------------------------
	echo     MENU PERBAIKAN KOMPUTER
	echo --------------------------------
	echo [N1] Registry Editor
	echo [N2] Diagnostic Tool
	echo [88] Kembali
	echo [99] Keluar
	echo.

	set pilihan= x
	set /p pilihan= Masukan pilihan nomor : 
	if "%pilihan%" == "N1" goto registry_editor
	if "%pilihan%" == "N2" goto diagnostic_tool
	if  %pilihan%  == 88   goto begin
	if  %pilihan%  == 99   goto exit
	if "%pilihan%" == ""  (goto perbaikan_komputer) else (goto perbaikan_komputer)

	:registry_editor
		set pilihan= x
		regedit
		goto perbaikan_komputer
	:diagnostic_tool
		set pilihan= x
		dxdiag
		goto perbaikan_komputer





:jaringan_komputer
	cls
	echo --------------------------------
	echo      MENU JARINGAN KOMPUTER
	echo --------------------------------
	echo [N1] Cek IP Komputer
	echo [N2] Ping Domain
	echo [N3] Pengaturan Koneksi
	echo [88] Kembali
	echo [99] Keluar
	echo.

	set pilihan= x
	set /p pilihan= Masukan pilihan nomor : 
	if "%pilihan%" == "N1" goto ip_komputer
	if "%pilihan%" == "N2" goto ping_domain
	if "%pilihan%" == "N3" goto pengaturan_koneksi
	if  %pilihan%  == 88   goto begin
	if  %pilihan%  == 99   goto exit
	if "%pilihan%" == ""  (goto jaringan_komputer) else (goto jaringan_komputer)

	:ip_komputer
		cls
		ipconfig
		echo.
		echo [88] Kembali
		echo [99] Keluar
		echo.
		set pilihan= x
		set /p pilihan= Masukan pilihan nomor : 
		if %pilihan%   == 88  goto jaringan_komputer
		if %pilihan%   == 99  goto exit
		if "%pilihan%" == "" (goto jaringan_komputer) else (goto jaringan_komputer)
	:ping_domain
		cls
		ping google.com
		echo.
		echo [88] Kembali
		echo [99] Keluar
		echo.
		set pilihan= x
		set /p pilihan= Masukan pilihan nomor : 
		if  %pilihan%  == 88  goto jaringan_komputer
		if  %pilihan%  == 99  goto exit
		if "%pilihan%" == "" (goto jaringan_komputer) else (goto jaringan_komputer)
	:pengaturan_koneksi
		set pilihan= x
		ncpa.cpl
		goto jaringan_komputer





:aplikasi
	cls
	echo --------------------------------
	echo           MENU APLIKASI
	echo --------------------------------
	echo [N1] Notepad
	echo [N2] Kalkulator
	echo [N3] Paint
	echo [88] Kembali
	echo [99] Keluar
	echo.

	set pilihan= x
	set /p pilihan= Masukan pilihan nomor : 
	if "%pilihan%" == "N1" goto aplikasi_notepad
	if "%pilihan%" == "N2" goto aplikasi_kalkulator
	if "%pilihan%" == "N3" goto aplikasi_paint
	if  %pilihan%  == 88   goto begin
	if  %pilihan%  == 99   goto exit
	if "%pilihan%" == ""  (goto aplikasi) else (goto aplikasi)

	:aplikasi_notepad
		set pilihan= x
		notepad
		goto aplikasi
	:aplikasi_kalkulator
		set pilihan= x
		calc
		goto aplikasi
	:aplikasi_paint
		set pilihan= x
		mspaint
		goto aplikasi





:setting
	cls
	echo --------------------------------
	echo           MENU SETTING
	echo --------------------------------
	echo [N1] Setting Waktu
	echo [N2] Setting Tampilan
	echo [N3] Setting Multimedia
	echo [88] Kembali
	echo [99] Keluar
	echo.

	set pilihan= x
	set /p pilihan= Masukan pilihan nomor : 
	if "%pilihan%" == "N1" goto setting_waktu
	if "%pilihan%" == "N2" goto setting_tampilan
	if "%pilihan%" == "N3" goto setting_multimedia
	if  %pilihan%  == 88   goto begin
	if  %pilihan%  == 99   goto exit
	if "%pilihan%" == ""  (goto setting) else (goto setting)

	:setting_waktu
		set pilihan= x
		timedate.cpl
		goto setting
	:setting_tampilan
		set pilihan= x
		desk.cpl
		goto setting
	:setting_multimedia
		set pilihan= x
		mmsys.cpl
		goto setting





:exit
	Exit
