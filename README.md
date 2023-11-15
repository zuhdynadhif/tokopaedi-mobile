# tokopaedi

Nama: Zuhdy Nadhif Ayyasy
NPM: 2206081212
Kelas: PBP C

## Table of Content
1. [Tugas 7](#tugas-7)
2. [Tugas 8](#tugas-8)
3. [Tugas 9](#tugas-9)
4. [Tugas 10](#tugas-10)
5. [Tugas 11](#tugas-11)

## Tugas 7
[Contents](#table-of-content)
### 1. Apa perbedaan utama antara stateless dan stateful
`Stateless` dan `stateful` widget adalah jenis-jenis widget yang digunakan untuk membangun interface proyek flutter. Pada stateless widget, kondisi widget bersifat statis dan tampilannya didasarkan pada properti yang diberikan sejak awal. Contohnya adalah teks, icon, atau gambar. Sedangkan di sisi lain, stateful widget bersifat dinamis yang mana keadaan internal dari komponennya dapat diubah dalam satu siklus kehidupan aplikasi. Stateful widget digunakan ketika developer menginginkan perubahan pada komponen widget. Contoh dari stateful widget adalah formulir.

### 2. Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.
- Material<br>Menjadi widget utama untuk semua widget dalam sautu class

- Scaffold<br>Berfungsi untuk membangun widget appBar dan konten Body

- AppBat<br>Untuk menampilkan bagian yang berada dibagian atas aplikasi

- Text<br>Untuk menampilkan text

- Column<br>Mengatur elemen secara vertikal

- Padding<br>Memberikan jarak berupa padding pada widget

- ButtonCard<br>Stateless widget yang digunakan untuk menampilkan tombol

- InkWell<br>Widget untuk membangun action listener seperti sentuhan.

- Icon<br>Untuk menampilkan icon

- SnackBar<br>Widget untuk menampilkan pesan singkat pada bagian bawah aplikasi

### 3. Implementasi cheklist

#### a. Membuat sebuah program Flutter
Saya membuat proyek flutter dengan melakukan command `flutter create tokopaedi` pada folder yang saya inginkan. Kemudian masuk ke folder tersebut dan menjalankan proyek flutter dengan `flutter run`.

#### b. Membuat git
Melakukan inisiasi git di lokal dan membuat repository baru pada akun github saya, kemudian menghubungkan keduanya.

#### c. Membuat 3 tombol sederhana dengan ikon dan teks
Pertama, saya menerapkan *clean architecture* pada proyek tokopaedi yaitu dengan memisahkan `main.dart` menjadi `main.dart` dan `menu.dart`. `menu.dart` akan berisi implementasi widget flutter pada tampilan main menu.

Untuk membuat 3 tombol sederhana saya melakukan modifikasi pada MyHomePage menjadi sebuah stateless widget. Kemudian saya membuat 2 class, yaitu `ButtonItem` dan `ButtonCard`. Saya melakukan instansiasi `ButtonItem` sebagai list dan menjadikannya sebagai properti dari `MyHomePage`. Pada method `Widget Build`, saya membuat appBar dan juga body.

#### d. Membuat `Snackbar` dengan tulisan tertentu
Untuk membuat Snackbar, saya menambahkan kode berikut pada widget InkWell untuk menerapkan action listener berupa onTap().
```(Dart)
onTap: () {
    // Memunculkan SnackBar ketika diklik
    ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(SnackBar(
        content: Text("Kamu telah menekan tombol ${item.name}!")));
},
```
Snackbar akan muncul ketika tombol ditekan.

#### e. Bonus
Untuk menerapkan bonus, saya menambahkan properti baru pada ButtonItem berupa Color yang dinamai dengan backgroundColor dan memasukkannya pada constructor. Kemudian pada items yang dimiliki `MyHomePage`, setiap instance dari `ButtonItem` dibuat sesuai dengan warna background yang diinginkan. Lalu, color Material pada `ButtonCard` disesuaikan dengan `ButtonItem` yang berkaitan.

## Tugas 8
[Contents](#table-of-content)
### 1.  Jelaskan perbedaan antara `Navigator.push()` dan `Navigator.pushReplacement()`, disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!
Perbedaan antara `Navigator.push()` dan `Navigator.pushReplacement()` ada pada stack yang digunakan `Navigator.Pada push()`, route yang baru masuk ke dalam tumpukan paling atas dan ditampilkan ke pengguna, sedangkan `pushReplacement()` menghapus route paling atas dan menggantinya dengan route yang ingin di push, dalam kata lain, `pushReplacement()` mengganti .

### 2. Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!
| Layout Widget | Deskripsi |
| ------------- | --------- |
| Align | Widget yang meakukan align terhadap child yang dimilikinya yang bisa menyesuaikan dengan ukuran childnya |
| AspectRatio | Widget yang membuat suatu ukuran yang membuat ukuran yang fix untuk anak-anknya |
| Baseline | Container yang posisi child-nya bergantung pada baseline |
| Center | Aligning child yang dimilikinya ditengah-tengah dirinya |
| Constrained Box | Widget yang bisa memberikan batasan tertentu pada child yang dimilikinya |
| Container | Layout widget yang bisa mengkombinasikan berbagai konfigurasi warna, posisi, hingga ukuran |
| Padding | Widget yang akan memberikan padding yang spesifik bagi child-nya |
| Transform | Widget yang bis menerapkan transformation sebelum mewarnai child-nya |

### 3. Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!
* `Form`, digunakan mejadi sebuah container bagi beberapa form fields.
* `TextFormFields` digunakan untuk menginput nilai-nilai dari user, yaitu nama, harga, deskripsi, dan jumlah.

### 4. Bagaimana penerapan clean architecture pada aplikasi Flutter?
Clean architecture pada flutter adalah melakukan separation of concerns, yaitu dengan mengorganisir file-file yang ada dalam proyek flutter sehingga lebih modular.

### 5. Implementasi checklist
#### a. Membuat minimal satu halaman baru pada aplikasi, yaitu halaman formulir tambah item baru
Untuk menambahkan halaman formulir tambah item baru, saya membuat stateful widget InventoryFormPage beserta class state-nya. State class tersebut dibuat menggunakan Scaffold, body scaffold diisi dengan class Form yang diisi dengan field (dibungkus dengan Padding class). Setiap field memiliki action listener dan validatornya masing-masing.

#### b. Mengarahkan pengguna ke halaman form tambah item baru ketika menekan tombol Tambah Item pada halaman utama.
Untuk mengarahkan pengguna, saya memodifikasi widget pada menu.dart yaitu ButtonCard dengan menambahkan kondisi pada action listener, sehingga ketika nama dari suatu button sesuai (yaitu tambah produk) akan diarahkan ke halaman formulir yang sudah dibuat dengan menggunakan Navigator.push().

#### c. Memunculkan data sesuai isi dari formulir yang diisi dalam sebuah pop-up setelah menekan tombol Save pada halaman formulir tambah item baru.
Untuk memunculkan data, saya menggunakan showDialog() yang mengembalikan AlertDialog() yang telah diisi dengan data yang ada. Fungsi tersebut saya tambahkan pada button save yang ada di formulir bagian bawah.

#### d. Membuat sebuah drawer pada aplikasi dengan beberapa ketentuan
Saya menggunakan StatelessWidget untuk membuat drawer dengan membangun class yang mengembalikan Drawer. Untuk menambahkan dua buah navigator, saya menggunakan 2 ListTile yang mengarahkan ke Halaman Utama dan ke halaman Tambah Produk.

## Tugas 9
[Contents](#table-of-content)

## Tugas 10
[Contents](#table-of-content)

## Tugas 11
[Contents](#table-of-content)
