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


### Widget yang digunakan


### Jenis-jenis event pada Flutter


### Cara kerja Navigator dalam mengganti halaman


### Implementasi