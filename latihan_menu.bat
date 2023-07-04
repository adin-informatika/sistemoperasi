@echo off
title Latihan Menu
:begin
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
