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

:begin
cls 
echo ------------------------------------------------
echo                       MENU 
echo ------------------------------------------------
echo.
echo         [1] Pengaturan Komputer
echo         [2] Menu Restoran
echo         [3] Keluar

set /p "pilihmenu=Masukkan Pilihan Menu:"
if %pilihmenu%==1  goto pengaturan
if %pilihmenu%==2  goto restoran
if %pilihmenu%==3  goto keluar

:pengaturan
cls
echo ------------------------------------------------
echo                  SETTING KOMPUTER
echo ------------------------------------------------
echo         [1]  Setting Keyboard 
echo         [2]  Setting Language
echo         [3]  Setting Date
echo         [4]  Add User
echo         [5]  Sound Control
echo         [6]  Open Startup
echo         [7]  chrome
echo         [88] Kembali
echo         [0]  Keluar
echo.

set /p "pilihan=Masukkan Pilihan Menu:"
if %pilihan%==1  goto keyboard
if %pilihan%==2  goto Language
if %pilihan%==3  goto Date
if %pilihan%==4  goto User
if %pilihan%==5  goto Sound
if %pilihan%==6  goto Startup
if %pilihan%==7  goto chrome
if %pilihan%==88 goto back
if %pilihan%==0  goto Exit 

:Keyboard
cls
start control Keyboard
goto setting
pause
:Language
cls
start intl.cpl 
goto setting
pause 
:Date
cls
start timedate.cpl
goto setting
:User
cls
start Netplwiz.exe
goto setting
pause
:Sound
cls
start SndVol.exe
goto setting
pause
:Startup
start msconfig
goto setting
pause
:chrome
"C:\Program Files (x86)\Google\Chrome\Application\chrome"
goto setting
:back
goto setting
:Exit
Exit

:restoran
color b5
cls 
echo ----------------------------------
echo         LATIHAN MENU
echo ----------------------------------
echo     [1} paket1 (bakso + teh manis) 15.000
echo     [2] paket2 (ikan bakar + teh manis) 25.000
echo     [3] paket3 (nasi lauk) 12.000
echo     [4] paket4 (gurame + cumi) 35.000
echo     [5] paket5 (bandeng + kepiting) 50.000
echo     [6] keluar
echo.
set /p "pilihan=Pillihan Menu Masakan:"

if %pilihan% == 1 (
goto 1
)else if %pilihan% == 2 (
goto 2 
)else if %pilihan% == 3 (
goto 3
)else if %pilihan% == 4 (
goto 4
)else if %pilihan% == 5 (
goto 5 
)else if %pilihan% == 6 (
goto 6
)

:1
cls
echo nama paket : paket1 (bakso + teh manis) 
echo Harga paket : 15.000
echo keuntungan : bakso + teh manis
pause
goto begin 

:2
cls
echo nama paket : paket2 (ikan bakar + teh manis) 
echo Harga paket : 25.000
echo keuntungan : ikan bakar + teh manis
pause
goto begin

:3
cls
echo nama paket : paket3 (nasi lauk + air putih) 
echo Harga paket : 12.000
echo keuntungan : nasi lauk + air putih
pause
goto begin

:4
cls
echo nama paket : paket4 (gurame + cumi) 
echo Harga paket : 35.000
echo keuntungan : gurame + cumi 
pause
goto begin

:5
cls
echo nama paket : paket5 (bandeng + kepiting) 
echo Harga paket : 50.000
echo keuntungan : bandeng + kepiting
pause
goto begin

:6
exit

:keluar
exit

