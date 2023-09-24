// (int, int) tukar((int, int) record) {
//   var (a, b) = record;
//   return (b, a);
// }

// void main() {
//   var record = (1, 2);
//   print(record);
//   print(tukar(record));

//   // Record type annotation in a variable declaration:
// (String, int) mahasiswa;
// print(mahasiswa);
// }

void main() {
  (String, int) mahasiswa = ('M. Rizky Mafazan', 2141720140);
  print(mahasiswa);

var mahasiswa2 = ('M.Rizky Mafazan', a: 2, b: true, '2141720140');

print(mahasiswa2.$1); // Prints 'first'
print(mahasiswa2.a); // Prints 2
print(mahasiswa2.b); // Prints true
print(mahasiswa2.$2); // Prints 'last'
}