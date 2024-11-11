# Praktikum 1: Mengunduh Data dari Web Service (API)<br>

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

# Praktikum 2: Menggunakan await/async untuk menghindari callbacks<br>

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

# Praktikum 3: Menggunakan Completer di Future<br>

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

# Praktikum 4: Memanggil Future secara paralel<br>

## Langkah 1: Buka Main.dart<br>

![alt text](image-19.png)<br>

## Langkah 2: Edit onPressed<br>

![alt text](image-20.png)<br>

## Langkah 3: Run<br>

### Soal 7: capture hasil praktikum<br>

![alt text](image-21.png)<br>

## Langkah 4: Ganti variable futureGroup<br>

![alt text](image-22.png)<br>

## Soal 8: Jelaskan maksud perbedaan kode langkah 1 dan 4!<br>

Jawab:<br>
Perbedaan antara kode yang menggunakan FutureGroup dan Future.wait terletak pada cara mengelola beberapa operasi asinkron. FutureGroup adalah kelas khusus, mungkin berasal dari paket eksternal, yang memberikan kontrol lebih besar atas kelompok Future, memungkinkan penambahan Future secara dinamis dan pengelolaan hasil secara individual. Sementara itu, Future.wait adalah metode bawaan Dart yang menerima daftar Future dan mengembalikan sebuah Future baru yang selesai ketika semua Future dalam daftar selesai, dengan hasilnya dikumpulkan dalam sebuah List. FutureGroup lebih cocok untuk skenario yang membutuhkan kontrol lebih rinci, sedangkan Future.wait lebih sederhana dan langsung digunakan ketika hanya perlu menunggu beberapa Future selesai dan mengumpulkan hasilnya.<br>

# Praktikum 5: Menangani Respon Error pada async code<br>

## Langkah 1: Buka Main.dart<br>

![alt text](image-23.png)<br>

## Langkah 2: ElevatedButton<br>

![alt text](image-24.png)<br>

## Langkah 3: Run<br>

### Soal 9: capture hasil praktikum<br>

![alt text](image-25.png)<br>

![alt text](image-26.png)<br>

## Langkah 4: Tambah method handleError<br>

![alt text](image-27.png)<br>

### soal 10: Panggil method handleError() tersebut di ElevatedButton, lalu run. Apa hasilnya? Jelaskan perbedaan kode langkah 1 dan 4!<br>

![alt text](image-28.png)<br>

Jawab:Perbedaan utama antara kedua kode tersebut terletak pada penanganan kesalahan. Kode pertama (returnError) hanya melemparkan exception tanpa penanganan, yang akan menyebabkan aplikasi terhenti jika terjadi error. Sementara kode kedua (handleError) menangani kesalahan dengan blok try-catch, di mana jika returnError melemparkan exception, kesalahan tersebut akan ditangkap dan ditangani dengan menampilkan pesan error melalui setState, yang memperbarui UI. Selain itu, kode kedua menggunakan blok finally, yang menjamin eksekusi kode setelah operasi selesai, baik berhasil maupun error, seperti mencetak "Complete". Dengan demikian, kode kedua lebih robust karena menangani kesalahan dan memastikan kelanjutan eksekusi program tanpa menyebabkan crash aplikasi.<br>

# Praktikum 6: Menggunakan Future dengan StatefulWidget<br>

## Langkah 1: install plugin geolocator<br>

![alt text](image-29.png)<br>

## Langkah 2: Tambah permission GPS<br>

![alt text](image-30.png)<br>

## Langkah 3: Buat file geolocation.dart<br>

![alt text](image-31.png)<br>

## Langkah 4: Buat StatefulWidget<br>

![alt text](image-32.png)<br>

## Langkah 5: Isi kode geolocation.dart<br>

![alt text](image-34.png)<br>

### soal 11: Tambahkan nama panggilan Anda pada tiap properti title sebagai identitas pekerjaan Anda.

![alt text](image-33.png)<br>

## Langkah 6: Edit main.dart<br>

![alt text](image-35.png)<br>

## Langkah 7: Run<br>

![alt text](image-36.png)<br>

## Langkah 8: Tambahkan animasi loading<br>

![alt text](image-37.png)<br>

### soal 12:

- Jika Anda tidak melihat animasi loading tampil, kemungkinan itu berjalan sangat cepat. Tambahkan delay pada method getPosition() dengan kode await Future.delayed(const Duration(seconds: 3));<br>
  ![alt text](image-38.png)<br>
- Apakah Anda mendapatkan koordinat GPS ketika run di browser? Mengapa demikian?
  Jawab:<br>
  Saat menjalankan aplikasi Flutter di browser, Anda tidak akan mendapatkan koordinat GPS karena browser tidak mendukung akses langsung ke hardware GPS perangkat. Geolocator, seperti banyak plugin lainnya, bergantung pada API yang menyediakan akses ke sensor perangkat (seperti GPS pada perangkat mobile atau tablet). Namun, browser tidak memberikan akses langsung ke informasi lokasi perangkat fisik melalui API yang sama yang digunakan di perangkat Android atau iOS.<br>

# Praktikum 7: Manajemen Future dengan FutureBuilder<br>

## Langkah 1: Modifikasi method getPosition()<br>

![alt text](image-39.png)<br>

## Langkah 2: Tambah Variable<br>

![alt text](image-40.png)<br>

## Langkah 3: Tambah initState()<br>

![alt text](image-41.png)<br>

## Langkah 4: Edit method build()<br>

### Soal 13: Apakah ada perbedaan UI dengan praktikum sebelumnya? Mengapa demikian?<br>

Jawab: Tidak ada tetapi disini menggunakan FutureBuilder. FutureBuilder adalah widget yang dirancang untuk menangani operasi asinkron dan menampilkan data yang diperoleh secara dinamis. Dalam hal ini, saat aplikasi menunggu lokasi perangkat, akan muncul indikator pemuatan (loading) berupa CircularProgressIndicator.<br>

## Langkah 5: Tambah handling error<br>

![alt text](image-42.png)

### Soal 14: Apakah ada perbedaan UI dengan langkah sebelumnya? Mengapa demikian?<br>

Jawab: Untuk UI nya tidak berubah tetapi disini membuat kode baru untuk penanganan error. Pada kode yang baru, terdapat penanganan kesalahan (error handling) menggunakan snapshot.hasError di dalam FutureBuilder. Jika terjadi kesalahan saat mengambil data lokasi, maka aplikasi akan menampilkan pesan error "Something terrible happened!". <br>

# Praktikum 8: Navigation route dengan Future Builder<br>

## Langkah 1: Buat file baru navigation_first.dart<br>

![alt text](image-43.png)<br>

## Langkah 2: Isi kode navigation_first.dart<br>

### Soal 15: Tambahkan nama panggilan Anda pada tiap properti title sebagai identitas pekerjaan Anda. Silakan ganti dengan warna tema favorit Anda.

![alt text](image-47.png)

## Langkah 3: Tambah method di class \_NavigationFirstState<br>

![alt text](image-45.png)<br>

## Langkah 4: Buat file baru navigation_second.dart<br>

![alt text](image-46.png)<br>

## Langkah 5: Buat class NavigationSecond dengan StatefulWidget<br>

![alt text](image-48.png)<br>

## Langkah 6: Edit main.dart<br>

![alt text](image-49.png)<br>

## Langkah 7: Run<br>

![alt text](image-50.png)<br>

### Soal 16: Cobalah klik setiap button, apa yang terjadi ? Mengapa demikian ? Gantilah 3 warna pada langkah 5 dengan warna favorit Anda!<br>

Jawab: Ketika kamu mengklik tombol di NavigationSecond, seperti tombol "Amber", "Purple", atau "Yellow", setiap tombol akan mengubah nilai variabel color menjadi warna tertentu (misalnya Colors.amber.shade200 untuk tombol "Amber") dan kemudian kembali ke NavigationFirst dengan mengirimkan nilai warna tersebut menggunakan Navigator.pop(context, color). Di NavigationFirst, nilai warna yang dikirimkan akan diterima oleh Navigator.push() dan mengubah background color aplikasi menggunakan setState(), sesuai dengan warna yang dipilih di NavigationSecond. Namun, terdapat bug di NavigationSecond, di mana variabel color tidak diberi nilai awal, yang bisa menyebabkan error. Seharusnya, variabel color diberi nilai default (misalnya color = Colors.green) untuk menghindari masalah tersebut. Dengan perbaikan ini, setelah menekan tombol di NavigationSecond, aplikasi akan kembali ke NavigationFirst dengan background yang berubah sesuai dengan pilihan warna dari tombol yang ditekan.<br>

# Praktikum 9: Memanfaatkan async/await dengan widget dialog<br>

## Langkah 1: Buat file baru dialog.dart<br>

![alt text](image-51.png)<br>

## Langkah 2: isi kode navigation_dialog.dart<br>\

![alt text](image-52.png)

## Langkah 3: Tambah method async<br>

![alt text](image-53.png)<br>

## Langkah 4: Panggil method di ElevatedButton<br>

![alt text](image-54.png)<br>

## Langkah 5: Edit main.dart<br>

![alt text](image-55.png)<br>

## Langkah 6: Run<br>

![alt text](image-56.png)<br>

### Soal 17: Cobalah klik setiap button, apa yang terjadi ? Mengapa demikian ?

Jawab: Ketika mengklik setiap tombol ("Amber", "Purple", atau "Blue") pada dialog di NavigationDialogScreen, masing-masing tombol akan mengubah nilai variabel color menjadi warna tertentu (misalnya Colors.amber.shade200 untuk tombol "Amber"). Setelah itu, dialog akan ditutup menggunakan Navigator.pop(context, color), yang mengirimkan nilai warna yang dipilih kembali ke NavigationDialogScreen. Setelah dialog ditutup, setState() dipanggil untuk memperbarui tampilan dan mengganti latar belakang layar menjadi warna yang dipilih. Hal ini terjadi karena setState() memberitahukan Flutter bahwa ada perubahan dalam status yang perlu diperbarui di UI. Jadi, ketika tombol dipilih, warna latar belakang aplikasi akan berubah sesuai dengan pilihan warna yang diinginkan oleh pengguna.<br>
