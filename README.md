# Tugas 7

### Stateless and Stateful widget
##### Stateless widget
1. Widget yang tidak bisa diubah oleh pengguna
2. Perubahan isi dari widget hanya bisa dilakukan oleh developer melalui kode program
3. Contoh: Icon, IconButton, Text

##### Stateful
1. Widget yang bisa berinteraksi dengan pengguna
2. Widget bisa mengubah tampilan dari aplikasi berdasarkan Event-nya
3. Contoh: Checkbox, Radio, FloatingActionButton

### Widget pada Program
1. Text: Untuk menampilkan kondisi ganjil atau genap dan nilai counter saat ini
2. Padding: Untuk memberikan jarak antara widgets dengan border parentnya
3. Visbility: Untuk mengatur ada/tidaknya widget pada tampilan layar
4. FloatingActionButton: melakukan decrement atau increment pada nilai counter
5. Icon: Memberi simbol pada FloatingActionButton
6. TextStyle: Mengatur styling pada text
7. Scaffold: Mengatur layout aplikasi
8. AppBar: Menambahkan bar aplikasi
9. Column: Menjadikan beberapa widget pada satu kolom
10. Center: Mengatur layout di tengah

### Fungsi setState()
Menginformasikan framework bahwa ada perubahan pada object yang bisa mempengaruhi tampilan sehingga dilakukan kembali proses build.
Pada program, yang bisa termodifikasi saat setState() dipanggil adalah Text yang menyatakan ganjil dan genap beserta Color dari Text tersebut. Selain itu, nilai counter juga berubah saat Event dari FloatingActionButton terjadi.

### Perbedaan const dan final
##### const
1. state dari objek bisa diubah saat compile time
2. digunakan untuk value yang nilainya dikenali saat compile time, seperti "abc", 1.
##### final
1. state dari objek tidak bisa diubah sama sekali
2. digunakan untuk value yang nilainya hanya dikenali saat runtime, misalnya new Object()

### Implementasi checklist
1. Pada `_MyHomePageState` menambahkan fungsi `decrement()` untuk timbal balik Event dari FloatingActionButton yang baru.
2. Membuat `Padding()` dan menjadikan `Row()` sebagai child utama
3. Memodifikasi bagian FloatingActionButton increment yang berada pada child dengan memanggil `Row()` dan memasukkan FloatingActionButton increment dan decrement sebagai children dari `Row()`
4. FloatingActionButton decrement menggunakan `Visibilty()` sebagai parentnya supaya bisa di-hide dan di-show sesuai nilai counter (BONUS)


# Tugas 8

### Perbedaan Navigator.push dan Navigator.pushReplacement.
Navigator.push menimpa dan menimbun layer layaknya konsep stack. Navigator.pushReplacement mengganti layer yang ada menjadi layer yang baru.

### Widget yang digunakan
1. Card: membuat komponen kartu untuk tiap index berisi informasi budget
2. Drawer: panel untuk navigator page
3. Form: container form untuk widget penerima input user
4. ListTile: container yang membantu pengguna ke page yang lain
5. TextFormField: widget untuk menerima input user
6. Column, Padding, Row: widget untuk mengatur posisi
7. DropDownButton: membuat input berjenis dropdown
8. Container: menampung beberapa elemen menjadi satu
9. TextButton: widget tombol untuk mengambil input user


### Jenis-jenis event pada Flutter
1. onPressed
2. onChange
3. onTap
4. onSaved

### Cara kerja Navigator dalam mengganti halaman
Navigator menggunakan konsep stack. Page yang akan ditampilkan di push menjadi layer teratas dari stack. Jika ingin kembali ke page sebelumnya, layer page di pop. 
Selain itu, terdapat pushReplacement yang mengganti layer page lama dengan layer page yang ingin ditampilkan. Dengan begitu, hanya terdapat 1 layer page pada stack.

### Implementasi
1. Membuat file drawer.dart berisi widget drawer yang bisa digunakan tiap page
2. Menambahkan drawer pada main.dart
3. Membuat budget.dart berisi class Budget untuk menyimpan data dari input user
4. Membuat file tambah_data.dart sebagai form untuk menambahkan dart. Menggunakan class Budget untuk menyimpan data yang diterima.
5. Membuat file show_data.dart untuk menampilkan card berisi informasi budget. Menggunakan list dari class Budget untuk menampilkan data.


# Tugas 9

### Pengembilangan data JSON tanpa sebuah model
Bisa, tapi metode ini memiliki resiko data yang diterima bukan lah data yang diinginkan. JSON memiliki beberapa layer sehingga pembuatan sebuah model sangat disarankan supaya data pada Flutter memiliki struktur dan mempermudah proses pengambilan data.


### Widget yang digunakan saat ini
1. Drawer: panel untuk navigator page
2. ListTile: container yang membantu pengguna ke page yang lain
3. TextFormField: widget untuk menerima input user
4. Column, Padding, Row: widget untuk mengatur posisi
5. Outlined button: Membuat button yang mengarahkan ke page detail film
6. Text: Menampilkan teks dari data JSON
7. TextButton: widget tombol untuk mengambil input user
8. SizedBox: membuat sixed box dengan ukuran yang fixed
9. SingleScrollChildView: menambahkan widget scroll pada widget column yang isinya tidak cukup di ukuran 1 layar
10. ElevatedButton: Membuat button untuk back to page

### Mekanisme pengembilan data dari JSON
* Menambahkan dependensi `http`
* Membuat function fetch data untuk mengambil data dari URL
* Membuat model yang disesuaikan dengan struktur pada database JSON
* Melakukan fetch data dan mengkonversi data JSON
* Menampilkan data secara asnychronous dengan `FutureBuilder`

### Implementasi Checklist
* Membuat halaman mywatchlist dan menambahkannya pada drawer
* Menambahkan dependesi HTTP pada android XML
* Membuat model yang disesuaikan dengan struktur data JSON pada tugas 3
* Membuat halaman utama watchlist menggunakan outlined button yang nantinya akan mengarahkan ke page detail sesuai index datanya
* Membuat page detail watchlist yang menerima data dari page utama mywatchlist