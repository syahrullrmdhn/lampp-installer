#!/bin/bash

# Skrip installer LAMP otomatis
# Dibuat oleh: Syahrul Ramadhan
# Website: syahrulramadhan.id

# Fungsi untuk menampilkan pesan selamat datang
function welcome {
    echo "Selamat datang di installer LAMP otomatis!"
    echo "Skrip ini akan menginstal Apache, MySQL, dan PHP."
    echo "Dibuat oleh: Syahrul Ramadhan"
    echo "Website: syahrulramadhan.id"
}

# Fungsi untuk menginstal Apache
function install_apache {
    echo "Menginstal Apache..."
    sudo apt install apache2 -y  # Sesuaikan dengan paket manager Anda
    # Konfigurasi tambahan jika diperlukan
}

# Fungsi untuk menginstal MySQL
function install_mysql {
    echo "Menginstal MySQL..."
    sudo apt install mysql-server -y  # Sesuaikan dengan paket manager Anda
    # Konfigurasi keamanan awal MySQL
    sudo mysql_secure_installation
}

# Fungsi untuk menginstal PHP
function install_php {
    echo "Menginstal PHP..."
    sudo apt install php libapache2-mod-php -y  # Sesuaikan dengan paket manager Anda
    # Instalasi ekstensi PHP tambahan jika diperlukan
}

# Fungsi utama
main() {
    welcome
    install_apache
    install_mysql
    install_php
    echo "Instalasi LAMP selesai!"
}

# Panggil fungsi utama
main