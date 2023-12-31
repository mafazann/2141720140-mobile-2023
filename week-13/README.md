## Nama : M . Rizky Mafazan (16)
## NIM : 2141720140
## Kelas : 3F

<br>
<br>

# Week 13 - Lanjutan State Management dengan Streams

### Praktikum 1: Dart Streams


**Soal 1**

- Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.
- Gantilah warna tema aplikasi sesuai kesukaan Anda.
- Lakukan commit hasil jawaban Soal 1 dengan pesan "W13: Jawaban Soal 1"

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream Mafazan',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StreamHomePage(),
    );
  }
}

class StreamHomePage extends StatefulWidget {
  const StreamHomePage({super.key});

  @override
  State<StreamHomePage> createState() => _StreamHomePageState();
}

class _StreamHomePageState extends State<StreamHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

```

**Soal 2**

- Tambahkan 5 warna lainnya sesuai keinginan Anda pada variabel colors tersebut.
- Lakukan commit hasil jawaban Soal 2 dengan pesan "W13: Jawaban Soal 2"

```dart
import 'package:flutter/material.dart';

class ColorStream {
  final List<Color> colors = [
  Colors.red,
  Colors.yellow,
  Colors.blue,
  Colors.green,
  Colors.teal,
];


}

```


**Soal 3**

- Jelaskan fungsi keyword yield* pada kode tersebut!
> Keyword 'yield*' digunakan dalam metode getColors() dari kelas ColorStream untuk mendelegasikan pembuatan warna ke generator lain. 'yield*' digunakan untuk mendelegasikan pembuatan warna ke generator Stream.periodic().

- Apa maksud isi perintah kode tersebut?
> Untuk menjelaskan fungsi keyword yield* pada kode yang diberikan. Kode tersebut mendefinisikan kelas ColorStream yang memiliki metode getColors(). Metode getColors() menghasilkan aliran warna yang berubah setiap detik. Warna yang dihasilkan dipilih dari daftar warna yang disimpan dalam properti colors.

- Lakukan commit hasil jawaban Soal 3 dengan pesan "W13: Jawaban Soal 3"

**Soal 4**

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.

![Praktikum Soal 4](docs/Soal4.gif)

- Lakukan commit hasil jawaban Soal 4 dengan pesan "W13: Jawaban Soal 4"

**Soal 5**

- Jelaskan perbedaan menggunakan listen dan await for (langkah 9) !
> 'await' digunakan untuk mengambil nilai asinkron secara berurutan dalam suatu loop, sementara 'listen' digunakan untuk mendaftarkan fungsi yang akan dipanggil setiap kali ada perubahan dalam stream tanpa menghentikan eksekusi program.

- Lakukan commit hasil jawaban Soal 5 dengan pesan "W13: Jawaban Soal 5"

### Praktikum 2: Stream controllers dan sinks

**Soal 6**

- Jelaskan maksud kode langkah 8 dan 10 tersebut!
> Pada langkah 8 tersebut mencakup pengaturan awal untuk mengelola aliran data atau stream angka. Pada bagian ini, objek NumberStream dibuat dan diinisialisasi, termasuk juga pengambilan controller dari objek tersebut. Controller ini digunakan untuk mengontrol aliran data dan mendapatkan objek Stream dari controller, serta menambahkan listener ke aliran data. Dalam hal ini, ketika ada data baru yang diterima di aliran, fungsi yang ditentukan dalam blok listen akan dijalankan. Fungsi ini menggunakan setState untuk memperbarui state dengan nilai terbaru dari aliram, yang dalam konteks ini disimpan sebagai lastNumber.

> Pada Langkah 10 terdiri dari fungsi addRandomNumber(), yang bertujuan untuk menambahkan angka acak ke aliran data. Dalam fungsi ini, objek Random dibuat untuk menghasilkan angka acak antara 0 dan 9. Angka acak ini kemudian ditambahkan ke sink pada objek NumberStream. Dengan melakukan hal ini, nilai yang ditambahkan akan dikirimkan ke semua listener yang telah didaftarkan ke aliran data tersebut, sehingga memungkinkan tindakan tertentu diambil ketika ada perubahan nilai dalam aliran data.

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.

![Praktikum Soal 6](docs/Soal6.gif)

- Lalu lakukan commit dengan pesan "W13: Jawaban Soal 6".

**Soal 7**

- Jelaskan maksud kode langkah 13 sampai 15 tersebut!

> Pada kode langkah 13 sampai 15 yaitu membuat handling ketika terjadi error menggunakan metode `addError()` dalam class `stream.dart`. Dalam konteks ini, jika terjadi error atau kesalahan selama proses iterasi atau saat `stream` menghasilkann ilai, maka fungsi `addError()` dipanggil untuk menangani situasi tersebut. Sebagai hasil dari penanganan kesalahan, nilai variabel dari `lastNumber` akan diatur menjadi -1.

- Kembalikan kode seperti semula pada Langkah 15, comment addError() agar Anda dapat melanjutkan ke praktikum 3 berikutnya.
- Lalu lakukan commit dengan pesan "W13: Jawaban Soal 7".


### Praktikum 3: Injeksi data ke streams

**Soal 8**

- Jelaskan maksud kode langkah 1-3 tersebut!
> Pada langkah 1, Menambahkan variabel transformer ke dalam kelas _StreamHomePageState. Variabel ini memiliki tipe StreamTransformer, yang merupakan objek yang dapat mengubah (transform) nilai di dalam stream.

> Pada langkah 2, Membuat objek StreamTransformer dengan menggunakan metode fromHandlers. Objek ini digunakan untuk mengubah nilai di dalam stream. Dalam kasus ini, nilai diubah dengan mengalikan setiap nilai dengan 10. Selain itu, terdapat penanganan error yang menghasilkan nilai -1, dan penanganan ketika stream selesai.

> Pada langkah 3, Menggunakan transform pada stream untuk menerapkan transformasi yang telah ditentukan oleh transformer. Setiap nilai yang masuk ke dalam stream akan dikalikan dengan 10 sesuai dengan logika yang didefinisikan dalam transformer. Selanjutnya, Anda mendengarkan perubahan pada stream seperti biasa dan memperbarui UI melalui setState.

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.

![Praktikum Soal 8](docs/Soal8.gif)

- Lalu lakukan commit dengan pesan "W13: Jawaban Soal 8".

### Praktikum 4: Subscribe ke stream events

**Soal 9**

- Jelaskan maksud kode langkah 2, 6 dan 8 tersebut!
> Pada langkah 2 maksudnya adalah untuk melakukan langganan (subscribe) pada stream, sehingga dapat memperoleh informasi atau output yang dihasilkan oleh stream tersebut. 

> Pada langkah 6 terdapat pemanggilan method cancel pada objek subscription terhadap stream, sehingga listener tidak akan menerima pembaruan lebih lanjut dari stream tersebut setelah pemanggilan ini. Hal ini dapat berguna saat widget dihapus atau tidak lagi memerlukan pembaruan dari stream tertentu.

> Pada langkah 8, function addRandomNumber() akan menghasilkan angka acak antara 0-9 dan kemudian menambahkannya ke sink di objek numberStream. Namun, sebelum melakukan itu, fungsi memeriksa apakah sink telah ditutup. Jika sink masih terbuka, random number akan ditambahkan ke dalam stream, jika tidak, nilai lastNumber diatur menjadi -1 melalui setState. Hal ini untuk mengantisipasi situasi di mana stream telah ditutup dan tidak bisa menerima data lebih lanjut.

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.

![Praktikum Soal 9](docs/Soal9.png)

- Lalu lakukan commit dengan pesan "W13: Jawaban Soal 9".

### Praktikum 5: Multiple stream subscriptions

**Soal 10**

- Jelaskan mengapa error itu bisa terjadi ?
> Error tersebut terjadi saat mencoba menambahkan atau membuat dua subscription pada stream yang sama tanpa membatalkan subscription sebelumnya. Situasi ini terjadi ketika subscription2 diinisialisasi dalam metode initState(), padahal subscription pertama sudah ada untuk menangani stream yang sama pada saat yang bersamaan.

![Praktikum Soal 10](docs/Soal10.png)

**Soal 11**

- Jelaskan mengapa hal itu bisa terjadi ?
> Saat tombol "New Random Number" ditekan, maka akan menghasilkan dua angka random yang sama. Angka-angka tersebut merupakan output dari stream yang dipanggil oleh objek subscription dan subscription2. Stream tersebut akan mengembalikan nilai berupa event (angka random) yang dipisahkan dengan tanda "-". Saat tombol "Stop Stream" ditekan, maka akan menghentikan langganan terhadap stream. Hal ini menyebabkan stream tidak lagi bisa mengeluarkan output, meskipun tombol "New Random Number" ditekan.

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
![Praktikum Soal 11](docs/Soal11.gif)

- Lalu lakukan commit dengan pesan "W13: Jawaban Soal 10,11".

### Praktikum 6: StreamBuilder

**Soal 12**

- Jelaskan maksud kode pada langkah 3 dan 7 !
> Pada Langkah 3 melibatkan pembuatan class NumberStream(), yang mencakup metode getNumbers() untuk menghasilkan stream yang berisi angka-angka acak. Stream ini diperbarui setiap 1 detik.

> Pada Langkah 7 menunjukkan penggunaan kode untuk membuat antarmuka pengguna (UI) yang dapat menampilkan nilai dari stream secara real-time. Untuk mencapai ini, digunakan StreamBuilder, yang secara otomatis memperbarui antarmuka setiap kali ada perubahan dalam stream. Perubahan ini dapat berupa perubahan nilai atau munculnya error. Dalam kasus terjadinya error, pesan 'Error!' akan ditampilkan. Jika tidak ada error dan data diterima dari stream, angka acak akan ditampilkan dengan ukuran font setara dengan 96. Namun, jika tidak ada data yang diterima, antarmuka akan menampilkan widget kosong.

- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
![Praktikum Soal 12](docs/Soal12.gif)

- Lalu lakukan commit dengan pesan "W13: Jawaban Soal 12".

### Praktikum 7: BLoC Pattern

**Soal 13**

- Jelaskan maksud praktikum ini ! Dimanakah letak konsep pola BLoC-nya ?

> RandomNumberBloc:
- Class ini bertanggung jawab untuk mengelola logika bisnis terkait dengan angka acak.
- Mempunyai dua StreamController: _generateRandomController untuk input event dan _randomNumberController untuk output stream.
- Memiliki method generateRandom, yang merupakan sink untuk memasukkan event ke dalam bloc.
- Memiliki stream randomNumber, yang dapat diakses oleh widget untuk mendengarkan perubahan pada angka acak.
- Di dalam konstruktor, ketika ada event masuk (_generateRandomController.stream.listen), sebuah angka acak di-generate dan dikirimkan ke output stream (_randomNumberController.sink.add(random)).

> RandomScreen:

- Class ini adalah widget yang menampilkan antarmuka pengguna terkait dengan angka acak.
- Membuat instance dari RandomNumberBloc (final _bloc = RandomNumberBloc();) untuk mengelola logika bisnis dan state.
- Menggunakan StreamBuilder untuk mendengarkan perubahan pada stream randomNumber dari BLoC.
- Saat tombol FAB (Floating Action Button) ditekan, memanggil method generateRandom pada BLoC untuk memicu pembangkitan angka acak.

> Main :

 Di dalam class ini, fungsi main digunakan untuk memulai aplikasi. Dengan menggunakan MaterialApp, kita menetapkan tema dasar aplikasi dan menentukan bahwa layar awal akan menampilkan RandomScreen sebagai widget utama. Hal ini mengikuti konsep BLoC, di mana RandomScreen bertindak sebagai bagian antarmuka pengguna yang berinteraksi dengan RandomNumberBloc untuk mengelola logika terkait angka acak. Dengan menetapkan widget utama sebagai RandomScreen dalam fungsi main, aplikasi memulai alur kerja yang terstruktur sesuai konsep BLoC, di mana logika bisnis dipisahkan dari antarmuka pengguna.


- Capture hasil praktikum Anda berupa GIF dan lampirkan di README.
![Praktikum Soal 13](docs/Soal13.gif)

- Lalu lakukan commit dengan pesan "W13: Jawaban Soal 13".

