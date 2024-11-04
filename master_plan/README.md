# Praktikum 1 : Dasar State dengan Model-View

## Langkah 1 : Buat Project Baru<br>

![alt text](image.png)<br>

## Langkah 2 : Membuat model task.dart<br>

![alt text](image-1.png)<br>

## Langkah 3 : Buat file plan.dart<br>

![alt text](image-2.png)<br>

## Langkah 4 : Buat file data_layer.dart<br>

![alt text](image-3.png)<br>

## Langkah 5 : Pindah ke file main.dart<br>

![alt text](image-4.png)<br>

## Langkah 6 : Buat plan_screen.dart<br>

![alt text](image-5.png)<br>

## Langkah 7 : buat method \_buildAddTaskButton<br>

![alt text](image-6.png)<br>

## Langkah 8 : Buat method \_buildList<br>

![alt text](image-7.png)<br>

## Langkah 9 : Buat method \_buildTaskTile<br>

![alt text](image-8.png)<br>

## Langkah 10 : Tambah Scroll Controller<br>

![alt text](image-9.png)<br>

## Langkah 11 : Tambah Scroll Listener<br>

![alt text](image-10.png)<br>

## Langkah 12 : Tambah controller dan keyboard behavior<br>

![alt text](image-11.png)<br>

## Langkah 13 : Terakhir, tambah method dispose<br>

![alt text](image-12.png)<br>

## Langkah 14 : Hasil<br>

![alt text](image-13.png)<br>

## Tugas Praktikum 1 : Dasar State dengan Model-View<br>

1. Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file README.md! Jika Anda menemukan ada yang error atau tidak berjalan dengan baik, silakan diperbaiki.
2. Jelaskan maksud dari langkah 4 pada praktikum tersebut! Mengapa dilakukan demikian?
3. Mengapa perlu variabel plan di langkah 6 pada praktikum tersebut? Mengapa dibuat konstanta ?
4. Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat!
5. Apa kegunaan method pada Langkah 11 dan 13 dalam lifecyle state ?
6. Kumpulkan laporan praktikum Anda berupa link commit atau repository GitHub ke spreadsheet yang telah disediakan!

# Praktikum 2 : Mengelola Data Layer dengan InheritedWidget dan InheritedNotifier<br>

## Langkah 1 : Buat file plan_provider.dart<br>

![alt text](image-14.png)<br>

## Langkah 2 : Edit main.dart<br>

![alt text](image-15.png)<br>

## Langkah 3 : Tambah method pada plan.dart<br>

![alt text](image-16.png)<br>

## Langkah 4 dan 5 : Pindah ke PlanScreen dan Edit Method \_buildAddTaskButton<br>

![alt text](image-17.png)<br>

## Langkah 6 : Edit method \_buildTaskTile<br>

![alt text](image-18.png)<br>

## Langkah 7 : Edit \_buildList<br>

![alt text](image-19.png)<br>

## Langkah 8 dan 9 : Tetap di Class PlanScreen dan tambah widget safearea<br>

![alt text](image-20.png)<br>

## Tugas Praktikum 2 : InheritedWidget

1. Selesaikan langkah-langkah praktikum tersebut, lalu dokumentasikan berupa GIF hasil akhir praktikum beserta penjelasannya di file README.md! Jika Anda menemukan ada yang error atau tidak berjalan dengan baik, silakan diperbaiki sesuai dengan tujuan aplikasi tersebut dibuat.
2. Jelaskan mana yang dimaksud InheritedWidget pada langkah 1 tersebut! Mengapa yang digunakan InheritedNotifier?
3. Jelaskan maksud dari method di langkah 3 pada praktikum tersebut! Mengapa dilakukan demikian?
4. Lakukan capture hasil dari Langkah 9 berupa GIF, kemudian jelaskan apa yang telah Anda buat!
5. Kumpulkan laporan praktikum Anda berupa link commit atau repository GitHub ke spreadsheet yang telah disediakan!

## Praktikum 3 : Membuat State di Multiple Screens<br>

## Langkah 1 : Edit PlanProvider<br>

![alt text](image-21.png)<br>

## Langkah 2 : Edit main.dart<br>

![alt text](image-22.png)<br>

## Langkah 3 : Edit plan_screen.dart<br>

![alt text](image-23.png)<br>

## Langkah 4 dan 5 : error dan tambah getter plan<br>

![alt text](image-24.png)<br>

## Langkah 6 : Method initState<br>

![alt text](image-25.png)<br>

## Langkah 7 : Widget build<br>

![alt text](code.png)<br>

## Langkah 8 : Edit \_buildTaskTile<br>

![alt text](code1.png)<br>

## Langkah 9 : Buat Screen Baru<br>

![alt text](image-26.png)<br>

## Langkah 10 : Pindah ke class \_PlanCreatorScreenState<br>

![alt text](image-27.png)<br>
![alt text](image-28.png)<br>

## Langkah 11 : Pindah ke method build<br>

![alt text](image-29.png)<br>

## Langkah 12 : Buat widget \_buildListCreator<br>

![alt text](image-30.png)<br>

## Langkah 13 : Buat void addPlan()<br>

![alt text](image-31.png)<br>

## Langkah 14 : Buat widget \_buildMasterPlans()<br>

![alt text](image-33.png)<br>

![alt text](gif10.gif)<br>

## TUGAS

2. Berdasarkan Praktikum 3 yang telah Anda lakukan, jelaskan maksud dari gambar diagram berikut ini!<br>

![alt text](image-34.png)<br>

Jawab :

- `Pengelolaan State`: Sebelum menggunakan Navigator Push, state management dilakukan menggunakan PlanProvider yang menyimpan state dan data. Setelah menggunakan Navigator Push, state management dapat lebih terpisah antar layar sehingga masing-masing layar dapat mengelola state-nya sendiri.
- `Navigasi dan Struktur Widget`: Dengan menggunakan Navigator Push, kita dapat memisahkan layar menjadi lebih modular dan terstruktur. Navigator Push memungkinkan transisi ke layar baru (PlanScreen) dengan struktur yang lebih rapi dan menggunakan widget seperti Scaffold dan SafeArea untuk meningkatkan tata letak dan keamanan tampilan.
  Navigator Push membantu dalam memisahkan logika dan tampilan antar layar, membuat aplikasi lebih mudah untuk di-maintain dan di-scale.
