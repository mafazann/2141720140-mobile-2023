// void main() {
// var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
// print(halogens);

// var names1 = <String>{};
// Set<String> names2 = {}; // This works, too.
// var names3 = {}; // Creates a map, not a set.

// print(names1);
// print(names2);
// print(names3);
// }

void main() {
  var names1 = <String>{};
  Set<String> names2 = {};

names1.add('Nama: M.Rizky Mafazan');
  names1.add('NIM: 2141720140');
  names2.addAll(['Nama: M. Rizky Mafazan', 'NIM: 2141720140']);

  print('names1: $names1');
  print('names2: $names2');

  var names3 = {};
  print('names3: $names3');
}