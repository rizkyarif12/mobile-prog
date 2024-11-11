# Praktikum 1: Mengunduh Data dari Web Service (API)

## Langkah 1: Buat Project Baru<br>

![alt text](image.png)<br>

## Langkah 2: Cek file pubspec.yaml<br>

![alt text](image-1.png)<br>

## Langkah 3: Buka file main.dart<br>

### Soal 1: Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.<br>

Jawab:<br>
![alt text](p1.png)<br>

## Langkah 4: Tambah method getData()<br>

### Soal 2: Carilah judul buku favorit Anda di Google Books, lalu ganti ID buku pada variabel path di kode tersebut.Kemudian cobalah akses di browser URI tersebut dengan lengkap seperti ini. Jika menampilkan data JSON, maka Anda telah berhasil.<br>

Jawab:<br>
![alt text](image-2.png)<br>
![alt text](image-3.png)<br>
![alt text](image-4.png)<br>

## Langkah 5: Tambah kode di ElevatedButton<br>

![alt text](image-5.png)<br>

### Soal 3: Jelaskan maksud kode langkah 5 tersebut terkait substring dan catchError!<br>

Jawab:Ketika tombol ditekan, fungsi getData() dipanggil untuk mengambil data buku, dan hanya 450 karakter pertama dari body respon yang ditampilkan menggunakan substring. Jika permintaan berhasil, hasilnya ditampilkan; jika terjadi kesalahan, blok catchError menangani error tersebut dengan menampilkan pesan 'An Error Occurred'. setState digunakan untuk memperbarui tampilan setelah hasil permintaan diterima atau jika terjadi kesalahan, dan CircularProgressIndicator ditambahkan sebagai indikator pemrosesan.<br>

Hasil Akhir:<br>
![alt text](image-6.png)<br>

# Praktikum 2: Menggunakan await/async untuk menghindari callbacks

## Langkah 1: Buat file main.dart<br>

![alt text](image-7.png)<br>

## Langkah 2: Tambah method count()<br>

![alt text](image-8.png)<br>

## Langkah 3: Panggil count()<br>

![alt text](image-9.png)<br>

## Langkah 4: Run<br>

## Soal 4: Jelaskan maksud kode langkah 1 dan 2 tersebut!<br>

Jawab:<br>

- `Future<int>` menunjukkan bahwa fungsi ini mengembalikan objek `Future` yang menghasilkan nilai integer (`int`).
- `await Future.delayed(const Duration(seconds: 3));` menyebabkan fungsi ini menunggu selama 3 detik (mewakili penundaan atau operasi asinkron lainnya).
- Setelah 3 detik, fungsi mengembalikan nilai integer (1, 2, atau 3 tergantung pada fungsinya).
- Fungsi `count` adalah fungsi asinkron yang tidak mengembalikan nilai (`void`).
- `int total = 0;` mendeklarasikan dan menginisialisasi variabel `total` dengan nilai 0.
- `total = await returnOneAsync();` menunggu sampai `returnOneAsync` selesai dan mengembalikan nilai 1, yang kemudian disimpan dalam `total`.
- `total += await returnTwoAsync();` menunggu sampai `returnTwoAsync` selesai dan menambahkan nilai 2 ke `total`.
- `total += await returnThreeAsync();` menunggu sampai `returnThreeAsync`selesai dan menambahkan nilai 3 ke `total`.
- Setelah semua operasi selesai, fungsi `setState` digunakan untuk memperbarui tampilan dengan mengubah nilai `result` menjadi total dari ketiga nilai tersebut dalam bentuk string.

Hasil akhir:<br>
![alt text](image-10.png)<br>

# Praktikum 3: Menggunakan Completer di Future

## Langkah 1: Buka Main.dart<br>

![alt text](image-11.png)<br>

## Langkah 2: Tambahkan Variable dan Method<br>

![alt text](image-12.png)<br>

## Langkah 3: Ganti isi kode onPressed<br>

![alt text](image-13.png)<br>

## Langkah 4: Run<br>

## Soal 5: Jelaskan maksud kode langkah 2 tersebut!<br>

Jawab:<br>

- Completer dideklarasikan dengan keyword late, yang berarti bahwa variabel ini akan diinisialisasi nanti sebelum digunakan.
  ![alt text](image-14.png)<br>
- Fungsi ini mengembalikan sebuah Future.
- completer = Completer<int>(); membuat instance baru dari Completer yang menghasilkan Future yang akan menghasilkan nilai integer (int).
- calculate(); memanggil fungsi calculate untuk memulai perhitungan asinkron.
- return completer.future; mengembalikan Future yang terkait dengan Completer ini.

![alt text](image-15.png)<br>

- Fungsi ini menunggu selama 5 detik menggunakan Future.delayed.
- Setelah 5 detik, completer.complete(42); memanggil metode complete dari Completer untuk menyelesaikan Future yang terkait dan mengirimkan nilai 42.

Hasil:<br>
![alt text](image-16.png)<br>

## Langkah 5: Ganti method calculate()<br>

![alt text](image-17.png)<br>

## Langkah 6: Pindah ke onPressed<br>

![alt text](image-18.png)<br>

### Soal 6: Jelaskan maksud perbedaan kode langkah 2 dengan langkah 5-6 tersebut!<br>

Jawab:<br>

- Kode pertama tidak memiliki penanganan kesalahan, sehingga jika terjadi kesalahan dalam operasi asinkron, aplikasi mungkin mengalami crash atau perilaku tidak terduga.
- Kode kedua menggunakan blok try-catch untuk menangani kesalahan dan menyelesaikan Completer dengan error, memungkinkan penanganan kesalahan lebih baik.
