# alpine-amlogic-p212
Unofficial Alpine Linux SD card images for HG680-P / Amlogic Meson GXL (S905X) P212.

Repo ini berisi kode sumber yang dibutuhkan untuk membangun image SD card Alpine Linux. Tetapi saat ini belum ada dokumentasi untuk pengembang, atau otomatisasi build.
Untuk pengguna akhir bisa [mengunduh image matang](https://github.com/nggit/alpine-amlogic-p212/releases) lalu flash ke SD card.

Image dibangun dengan prinsip semurni mungkin tanpa tambahan sampah.

## Mengapa?
Alpine Linux adalah distro kecil yang cocok untuk perangkat embedded. Manajemen paket rapi, proses pasang - hapus tidak meninggalkan sampah. Sistem mudah dikembalikan ke sedia kala. `apk audit` membantu kita melihat apa saja yang berubah.

Saya tidak menemukan image SD card Alpine Linux yang khusus untuk perangkat ini di internet. Karena juga ternyata mainline Alpine Linux tidak bekerja mulus tanpa penyesuaian. Maka saya buat proyek ini untuk saya gunakan sendiri.

Jika anda ikut menggunakan atau mencoba, maka resiko tidak pada tanggung jawab saya.

## Instalasi
Anda bisa flash `.img.gz` ke SD card dengan tool seperti [balenaEtcher](https://etcher.balena.io/). Atau ekstrak lalu flash `.img` dengan `dd`.
```
zcat alpine_xxx.img.gz | dd of=/dev/sdX bs=4M status=progress conv=fsync
```

> **Perhatian**: /dev/sdX adalah tujuan disk (tanpa nomor partisi) misal /dev/sdb, bukan /dev/sdb1

## Menjalankan
Ketika pertama kali booting, partisi root SD card akan dilebarkan ke kapasitas maksimal secara otomatis. Lalu akan reboot sekali. Pada dasarnya tinggal pakai saja dengan:

> login: root
> 
> password: 1234

## Jaringan Nirkabel
Jika perangkat anda sama dengan punya saya, HG680-P yang menggunakan chip `rtl8189fs`. Maka WiFi internal sudah dipastikan nyala dan tinggal koneksikan saja dengan `nmtui`.

![nmtui](https://github.com/nggit/alpine-amlogic-p212/raw/main/nmtui.png)

## Lisensi
BSD 2-Clause
