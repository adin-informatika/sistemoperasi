@echo off
title Latihan 5 Perhitungan Luas Segitiga
rem ======================Setting Variabel ====================
echo------------------------------------------------------------
echo INPUTAN NILAI ALAS DAN TINGGI
echo------------------------------------------------------------
set/p alas= masukkan nilai alas :
set/p tinggi= masukkan nilai tinggi :

rem ======================Setting Perhitungan =================
set/a luas = alas*tinggi / 2

if %luas% GEQ 500 {
set grade = Kategori Besar
} else if %luas% GEQ 100{
set grade =Kategori Sedang
} else {
set grade =Kategori Kecil
}

cls
rem =====================Output===========================
echo------------------------------------------------------
echo Perhitungan Luas Segitiga
echo-------------------------------------------------------
echo alas : %alas%
echo tinggi:%tinggi%
echo-------------------------------------------------------
echo luas segitiga tersebut adalah : % Luas %
echo kategori bangunannya adalah:% grade %
pause
