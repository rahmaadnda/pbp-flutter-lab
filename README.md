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
