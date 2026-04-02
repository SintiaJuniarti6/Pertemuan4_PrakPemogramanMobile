# Pertemuan4_PrakPemogramanMobile

Program ini merupakan aplikasi sederhana yang dibuat menggunakan Flutter untuk menampilkan sebuah produk dan melakukan perhitungan jumlah barang (quantity) serta total harga. Aplikasi menampilkan nama produk, gambar produk yang diambil dari internet, dan harga produk. Pengguna dapat menambah atau mengurangi jumlah barang menggunakan tombol (+ ) dan (-).

Setiap kali jumlah barang berubah, aplikasi akan menghitung ulang total harga secara otomatis menggunakan fungsi setState(). Jika jumlah barang masih 0, aplikasi tetap menampilkan harga satu produk sebagai tampilan awal.

Struktur program terdiri dari StatelessWidget untuk tampilan utama aplikasi dan StatefulWidget pada NumberScreen yang digunakan untuk mengelola perubahan data seperti jumlah barang (qty) dan total harga. Tampilan produk dibuat menggunakan widget seperti Scaffold, AppBar, Card, Row, Column, Expanded, Image.network, dan IconButton agar tampilan lebih rapi dan responsif.
