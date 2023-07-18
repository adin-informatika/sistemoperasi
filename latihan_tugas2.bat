@echo off
title Menghitung Operasi Matematika 2
echo -------------- Menghitung Variabel --------------
echo a = 5
echo b = 7
echo c = 6
echo d = 110
echo e = 50
echo f = 4
echo Menghitung nilai ((5+5)(7*6))/((110-50)-(4*5))
rem ============== SETTING NILAI DAN VARIABEL ==============
set /a a= 5
set /a b= 7
set /a c= 6
set /a d= 110
set /a e= 50
set /a f= 4
set /a hasil = ((5+5)(7*6))/((110-50)-(4*5))
echo -------------- Hasil Perhitungan --------------
echo Hasilnya adalah : %hasil%
pause
