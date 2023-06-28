@echo off
title Program Operasi Hitung

rem Masukan Variabel
set /p a=Masukkan Nilai a :
set /p b=Masukkan Nilai b :
set /p c=Masukkan Nilai c :

rem Menghitung (a*b)^2+(b-c)^2/(a-c)
set /a hitung=((a*b)*(a*b)+(b-c)*(b-c))/(a-c)

echo HASIL
echo Hasil (%a%*%b%)**2+(%b%-%c%)**2/(%a%-%c%):%hitung%
echo
pause
