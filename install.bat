@ECHO off
echo " =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-";
echo " Pilih File yang akan dikonfigurasi                              ";
echo " [1] Install laravel                                             ";
echo " [2] install Vue                                                 ";
echo "=================================================================";
REM End Choose
@CHOICE /C:12 /M "Ketik Angka yang ingin di install"
IF ERRORLEVEL 2 GOTO two
IF ERRORLEVEL 1 GOTO one
GOTO end
:one
more versi_laravel.bat

REM Memilih nama file dan versinya
set /p versi_laravel=Masukkan versi laravel yang diinginkan : 
set /p nama_folder=Masukkan nama web laravel anda : 

REM Install Laravel 
composer create-project --prefer-dist laravel/laravel %nama_folder% "%versi_laravel%"

ECHO berhasil membuat file laravel dengan versi %versi_laravel%

REM Menghapus File
del install_laravel.bat install.bat versi_laravel.bat

REM Menjalankan laravel
php artisan serve
GOTO end

:two
ECHO Coming Soon Instal Vue JS!
:end

@PAUSE