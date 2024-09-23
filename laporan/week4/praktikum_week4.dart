// Praktikum 1
// void main() {
//   var list = [1, 2, 3];
//   assert(list.length == 3);
//   assert(list[1] == 2);
//   print(list.length);
//   print(list[1]);

//   list[1] = 1;
//   assert(list[1] == 1);
//   print(list[1]);
// }

// void main() {
//   final List<String?> list = List.filled(5, null,
//       growable: false); // Membuat list dengan panjang 5 dan nilai default null
//   list[1] = 'Rizky Arifiansyah'; // Mengisi elemen index ke-1 dengan nama
//   list[2] = '2241720040'; // Mengisi elemen index ke-2 dengan NIM

//   // Memastikan bahwa panjang list adalah 5 dan nilai pada index 1 dan 2 sudah benar
//   assert(list.length == 5);
//   assert(list[1] == 'Rizky Arifiansyah');
//   assert(list[2] == '2241720040');

//   // Mencetak panjang list dan nilai pada index 1 dan 2
//   print(list.length); // Output: 5
//   print(list[1]); // Output: Rizky Arifiansyah
//   print(list[2]); // Output: 2241720040

//   // Mencetak keseluruhan list
//   print(list); // Output: [null, Rizky Arifiansyah, 2241720040, null, null]
// }

// Praktikum 2
// void main() {
//   var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
//   print(halogens);
// }
// void main() {
//   var names1 = <String>{};
//   Set<String> names2 = {}; // This works, too.

//   names1.add('Rizky Arifiansyah');
//   names1.add('2241720040');
//   names2.addAll({'Rizky Arifiansyah', '2241720040'});

//   print(names1);
//   print(names2);
// }

// Praktikum 3
void main() {
  var gifts = {
    // Key:    Value
    'first': 'Rizky Arifiansyah',
    'second': '2241720040',
  };

  var nobleGases = {
    1: 'Rizky Arifiansyah',
    2: '2241720040',
  };

  var mhs1 = Map<String, String>();
  mhs1['first'] = 'Rizky Arifiansyah';
  mhs1['second'] = '2241720040';

  var mhs2 = Map<int, String>();
  mhs2[1] = 'Rizky Arifiansyah';
  mhs2[2] = '2241720040';

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}

// Praktikum 4
// void main() {
// var list1 = [1, 2, 3];
// var list2 = [0, ...list1];
// print(list1);
// print(list2);
// print(list2.length);

// Langkah 3
// List<int?> list = [1, 2, 3];
// var list2 = [0, ...list];
// print(list);
// print(list2);
// print(list2.length);

// list = [1, 2, null];
// print(list);
// var list3 = [0, ...list];
// print(list3.length);

// var nimA = [2, 2, 4, 1, 7];
// var nimB = [2, 0, 0, 4, 0];
// var list4 = [...nimA, ...nimB];
// print(list4);
// print(list4.length);

// Langkah 4
// var promoActive = true;
// var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
// print(nav);

// Langkah 5
// var login = 'Manager';
// var nav2 = [
//   'Home',
//   'Furniture',
//   'Plants',
//   if (login case 'Manager') 'Inventory'
// ];
// print(nav2);

// Langkah 6
//   var listOfInts = [1, 2, 3];
//   var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
//   assert(listOfStrings[1] == '#1');
//   print(listOfStrings);
// }

// Praktikum 5
// void main() {
// Langkah 1:
// var record = ('first', a: 2, b: true, 'last');
// print(record);

// Langkah 3:
  // var record = (2, 3);
  // print(record);
  // print(tukar(record));

// Langkah 4:
// Record type annotation in a variable declaration:
  // (String, int) mahasiswa = ('Rizky Arifiansyah', 2241720040);
  // print(mahasiswa);

// Langkah 5:
  // var mahasiswa2 = ('Rizky Arifiansyah', a: 2241720040, b: true, 'last');

  // print(mahasiswa2.$1); // Prints 'first'
  // print(mahasiswa2.a); // Prints 2
  // print(mahasiswa2.b); // Prints true
  // print(mahasiswa2.$2); // Prints 'last'
// }

// Langkah 3
// (int, int) tukar((int, int) record) {
//   var (a, b) = record;
//   return (b, a);
// }
