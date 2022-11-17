## Tugas 7

### _Stateless widget_, _stateful widget_, dan perbedaan dari keduanya
_Widget_ dapat berupa _stateful_ atau _stateless_.

_Stateless widget_ tidak dapat berubah, atau bisa juga disebut statis. Perubahannya hanya terjadi ketika inisialisasi, tidak bergantung pada perubahan data ataupun interaksi dari user. _Stateless widget_ tidak memerlukan _mutable state_ (_immutable_), hanya di-_render_ satu kali dan tidak dapat berubah ketika _runtime_, tetapi dapat diperbarui ketika ada perubahan data eksternal. Contoh _stateless widget_ adalah adalah Icon, IconButton, text.

_Stateful widget_ bersifat dinamis, memiliki _mutable state_. Sesuai sifatnya, widget tersebut berubah secara dinamis dan dapat mengubah tampilannya selama _runtime_ sebagai respon dari _event_ yang di-_trigger_ oleh interaksi pengguna atau ketika menerima data. Contohnya adalah mengubah warna, menambah jumlah baris, dan sebagainya. Contoh _stateful widget_ adalah Checkbox, Radio, Slider, InkWell, Form dan TextField.

### _Widget_ yang dipakai dan fungsinya
- AppBar: Biasanya untuk menampilkan _toolbar_ dari _widgets_ yang dimiliki aplikasi.
- Text: Menampilkan teks, sebagai informasi atau semacamnya.
- FloatingActionButton: Button yang biasanya berfungsi untuk interkasi user.

### Fungsi dari `setState()` dan variabel yang dapat terdampak dengan fungsi tersebut
_State_ dari suatu _widget_ disimpan dalam objek `State`, dipisahkan dari pengaturan tampilannya. _State_ berisi nilai yang dapat berubah, contohnya adalah apakah keadaan checkbox terisi atau tidak. Ketika _state_ dari _widget_ berubah, objek `State` akan memanggil `setState()` untuk meminta _framework_ untuk me-_reload_ atau menggambar ulang _widget_ terkait. Variabel yang terdampak adalah variabel yang bisa diubah setelah inisialisasinya, yaitu `var`, variabel yang dideklarasikan dengan _data type_ atau _identifier_-nya, dan `dynamic` (selain `final` dan `const`).

### Perbedaan antara `const` dengan `final`
Variabel `const` dan `final` sama-sama tidak bisa diubah setelah inisialisasinya. Perbedaannya, `const` perlu dideklerasikan saat _compile_, sedangkan `final` tidak harus, bisa saja baru diinisialisasi saat _runtime_.

### Implementasi _checklist_
1. _Generate_ proyek Flutter dengan menjalankan perintah `flutter create counter_7` dan masuk ke dalam direktori proyek.
2. Memodifikasi berkas `lib/main.dart` agar sesuai.
3. Menambahkan fungsi baru bernama `_decrementCounter` untuk melakukan decrement.
4. Menambahkan variabel `Text` sesuai ketentuan.
5. Menmabahkan button untuk melakukan decrement.
6. Mengimplementasikan bonus.

## Tugas 8
### Perbedaan `Navigator.push` dan `Navigator.pushReplacement`
- `Navigator.push` digunakan untuk 'mengganti' halaman. Method ini akan menambahkan _Route_ atau halaman ke stack yang diatur oleh Navigator.
- `Navigator.pushReplacement` akan mengganti halaman navigator saat ini dengan halaman tujuan yang baru di dalam stack. Secara singkat, method ini akan melakukan _push_ halaman yang dituju kemudian membuang halaman sebelumnya ketika halaman yang dituju sudah selesai di-_load_. 

Perbedaannya cukup jelas sesuai namanya, method push hanya akan menambahkan halaman baru ke stack sedangkan method pushReplacment akan menggantikan halaman yang ada di bagian paling atas stack dengan halaman baru.

### Widget yang dipakai di proyek kali ini dan fungsinya
- AppBar: Biasanya untuk menampilkan toolbar dari widgets yang dimiliki aplikasi.
- Text: Menampilkan teks, sebagai informasi atau semacamnya.
- FloatingActionButton: Button yang biasanya berfungsi untuk interkasi user.
- Row, Column: Flex widget untuk membuat _layout_ fleksibel secara horizontal (Row) atau vertikal (Column).
- Container: Membuat elemen persegi.
- ListView: Menampilkan banyak elemen dalam bentuk _scrollable list_.
- ListTile: Memudahkan penggunaan ListView.
- Drawer: Memberikan akses atau _link_ ke halaman dan fungsionalitas yang terdapat di aplikasi
- DropDownButton: Memilih satu pilihan yang unik dari beberapa pilihan yang tersedia.
- TextFormFiled: Membuat form yang bisa melakukan simpan, _reset_, dan validasi input.
- TextButton: Button yang akan menangkap _onPressed_ dan _onLongPress event_.

### Jenis-jenis event yang ada pada Flutter
- onPressed
- onTap
- onTapUp
- onTapDown
- onLongPress
- onDoubleTap
- onHorizontalDragStart
- onVerticalDragDown
- onPanDown
- onScaleStart

### Cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter
Halaman dalam flutter disebut _route_ dan navigasi halaman disebut _routing_ yang dikelola oleh widget Navigator. Navigator bekerja dengan konsep Stack. Widget ini juga berfungsi untuk menampilkan konten ke halaman. Flutter menyediakan _routing class_ dasar bernama MaterialPageRoute dengan dua _method_ dasar, yaitu `Navigator.push()` dan `Navigator.pop()`, untuk melakukan navigasi antar dua halaman.

Secara singkat, proses navigasi antara dua halaman terjadi menggunakan kedua method tersebut <br>
Navigator.push(): menambahkan halaman baru ke stack yang akan ditampilkan di atas halaman sebelumnya.
Navigator.pop(): menghapus halaman paling atas dari stack dan menampilkan halaman sebelumnya.

### Implementasi checklist
1. Membuat dua berkas dart baru untuk halaman form dan data
2. Menambahkan drawer/hamburger sebagai navigasi pada ketiga berkas
3. Membuat form sesuai ketentuan soal
4. Menambahkan list untuk menyimpan data yang ditambahkan
5. Menampilkan data yang sudah disimpan di halaman data.
