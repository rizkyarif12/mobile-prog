// Praktikum 2
// void main() {
//   int counter = 0;
//   while (counter < 33) {
//     print(counter);
//     counter++;
//   }
// }

// void main() {
//   int counter = 0;
//   do {
//     print(counter);
//     counter++;
//   } while (counter < 77);
// }

// Praktikum 3
// void main() {
//   int index;
//   for (index = 10; index < 27; index++) {
//     print(index);
//   }
// }

// void main() {
//   int index;
//   for (index = 1; index < 27; index++) {
//     if (index == 21) {
//       break;
//     } else if (index > 1 || index < 7) {
//       print(index);
//       continue;
//     }
//   }
// }

// Tugas Praktium
void main() {
  const int max = 201;
  for (int i = 2; i <= max; i++) {
    if (isPrime(i)) {
      print('$i adalah bilangan prima');
      print('Nama Lengkap: Rizky Arifiansyah');
      print('NIM: 2241720040');
      print('---');
    }
  }
}

// Fungsi untuk memeriksa apakah sebuah angka adalah bilangan prima
bool isPrime(int number) {
  if (number <= 1) return false;
  if (number == 2) return true; // 2 adalah bilangan prima
  if (number % 2 == 0)
    return false; // Bilangan genap lebih besar dari 2 bukan bilangan prima
  for (int i = 3; i * i <= number; i += 2) {
    if (number % i == 0) return false;
  }
  return true;
}
