ECHO off
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