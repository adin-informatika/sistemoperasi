@echo off
title Menghitung Operasi Matematika 1
rem ============== CETAK VARIABEL YANG DIBUTUHKAN ==============
echo -------------- Menghitung Variabel --------------
echo a = 50
echo b = 7
echo c = 2
echo d = 5
echo e = 3
echo f = 1
echo Menghitung nilai (50*(7+2))/((5+3)(2+1))
rem ============== SETTING NILAI DAN VARIABEL ==============
set /a a= 50
set /a b= 7
set /a c= 2
set /a d= 5
set /a e= 3
set /a f= 1
set /a hasil = (a*(b+c))/((d+e)*(c+f))
echo -------------- Hasil Perhitungan --------------
echo Hasilnya adalah : %hasil%
pause
