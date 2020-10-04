# Bahasa Pemrograman Swift

_Halaman ini disadur dari halaman resmi komunitas https://docs.swift.org_

## Daftar Isi

- [Tentang Swift](#tentang-swift)
  - [Fitur](#fitur)
  - [Penerjemahan Dokumentasi Berbahasa Indonesia dan _Open Source_](#penerjemahan-dokumentasi-berbahasa-indonesia-dan--open-source-)
  - [Dukungan _Platform_](#dukungan--platform-)
- [Perkenalan](#perkenalan)
  - [Pemasangan Swift](#pemasangan-swift)
  - [Penggunaan REPL](#penggunaan-repl)
  - [Penggunaan LLDB Debugger](#penggunaan-lldb-debugger)
- [Dokumentasi](#dokumentasi)
  - [Bahasa Pemrograman Swift](#bahasa-pemrograman-swift)
  - [_Swift Package Manager_](#-swift-package-manager-)
  - [Pedoman Perancangan API](#pedoman-perancangan-api)
  - [Pedoman Migrasi](#pedoman-migrasi)
- [Pedoman Penggunaan](#pedoman-penggunaan)
  - [Dasar](#dasar)
  - [Operator Dasar](#operator-dasar)
  - [String dan Karakter](#string-dan-karakter)
  - [Koleksi](#koleksi)
  - [Kontrol Alur](#kontrol-alur)
  - [Fungsi](#fungsi)
  - [Pengakhiran](#pengakhiran)
  - [Enumerasi](#enumerasi)
  - [Struct dan Class](#struct-dan-class)
  - [Properti](#properti)
  - [Metode](#metode)
  - [Subskrip](#subskrip)
  - [Pewarisan](#pewarisan)
  - [Inisialisasi](#inisialisasi)
  - [Deinisialisasi](#deinisialisasi)
  - [Perantaian Opsional](#perantaian-opsional)
  - [Penanganan _Error_](#penanganan--error-)
  - [Perubahan Tipe](#perubahan-tipe)
  - [Tipe Terbenam](#tipe-terbenam)
  - [Ekstensi](#ekstensi)
  - [Protokol](#protokol)
  - [Generik](#generik)
  - [Tipe Gamblang](#tipe-gamblang)
  - [Penghitung Referensi Otomatis](#penghitung-referensi-otomatis)
  - [Keamanan Pada Memori](#keamanan-pada-memori)
  - [Kontrol Akses](#kontrol-akses)
  - [Operator Lanjutan](#operator-lanjutan)
- [Referensi Bahasa](#referensi-bahasa)
  - [Struktur Leksikal](#struktur-leksikal)
  - [Tipe](#tipe)
  - [Ekspresi](#ekspresi)
  - [Pernyataan](#pernyataan)
  - [Deklarasi](#deklarasi-1)
  - [Atribut](#atribut)
  - [Pola](#pola)
  - [Parameter Generik dan Argumen](#parameter-generik-dan-argumen)
  - [Ringkasan Tatabahasa](#ringkasan-tatabahasa)

Diluncurkan pada tahun 2014, bahasa pemrograman Swift telah menjadi salah satu bahasa yang sangat berkembang pesat di dalam sejarah bahasa pemograman. Ini dikarenakan Swift memberikan kemudahan dalam menulis perangkat lunak yang tidak hanya cepat namun juga aman secara perancangan. Tujuan dibuatnya bahasa ini cukup ambisius yaitu dengan Swift diharapkan semua orang dapat melakukan pemrograman sederhana yang jauh lebh mudah and hal yang rumit menjadi memungkinkan.

Untuk kalangan pelajar atau mahasiswa, mempelajari Swift dapat mejadi pengenalan yang sangat baik untuk mengenali praktik-praktik yang baik dan konsep pemrograman yang moderen. Dan juga karena bahasa ini terbuka — sehingga semua orang dapat berkontribusi pada pengembangannya - kemampuan dalam memahami bahasa Swift ini bahkan juga dapat diterapkan pada _platform_ yang lebih luas, mulai dari perangkat _mobile_, _desktop_, dan juga pada teknologi komputasi awan.

## Tentang Swift

![Logo Swift](https://swift.org/assets/images/swift.svg)

Swift adalah bahasa pemrograman yang serbaguna yang dibangun menggunakan sebuah pendekatan moderen terhadap keamanan, performa, dan _design patterns_ pada perangkat lunak.
Tujuan dari proyek Swift dibuat adalah untuk memberikan bahasa pemrograman terbaik untuk digunakan mulai dari pemrograman sistem, aplikasi _mobile_, aplikasi _desktop_, hingga meningkatkan skalabilitas pada perangkat lunak berbasis komputasi awan. Dan yang lebih penting lagi, Swift dirancang untuk membuat sebuah penulisan dan perawatan sebuah program yang "benar" menjadi lebih mudah untuk para pengembang. Untuk mencapai tujuan ini, kami percaya bahwa cara terbaik untuk menulis dalam Swift juga harus sesuai dengan kriteria sebagai berikut:

- **Aman**  
  Yang paling terpenting dalam menulis kode juga haruslah memiliki sifat yang aman. Sifat-sifat yang tidak dapat didefinisikan tentu adalah sebuahg musuh dari aspek keamanan, dan kesalahan-kesalahan pada pengembang seharusnya dapat ditangkap jauh sebelum perangkat lunat diproduksi. Namun dikarenakan Swift sangat memegang erat aspek kemanan didalamnya seringkali Swift terasa memiliki aturan-aturan yang cukup ketat, dengan perancangan bahasa pemrograman Swift seperti ini dipercaya dapat lebih memudahkan kita untuk jangka panjang.
- **Cepat**  
  Swift awalnya ditujukan sebagai pengganti untuk bahasa pemrograman yang berbasis C seperti C, C++, dan Objective-C. Dengan demikian, Swift harus mampu disandingkan dengan bahasa-bahasa tersebut dalam hal performanya menyelesaikan persoalan-persoalan yang umum. Performa harus juga memiliki sifat mudah diprediksi dan konsisten, namun performa cepat ini bukanlah yang mengindahkan kaidah-kaidah yang telah disepakati tetapi adalah cepat yang baik juga secara perancangan. Kita dengan mudah menemui banyak bahasa yang muncul dengan fitur-fitur yang baru, namun diantara bahasa-bahasa tersebut sangat sulit menemukan yang cepat secara performa.
- **Ekspresif**  
  Swift mendapatkan manfaat langsung dari puluhan tahun pengembangan ilmu komputer dimana pengembang dapat menggunakan _syntax_ yang mudah digunakan bersama dengan fitur-fitur moderen yang dapat diharapkan. Pengembangan Swift tidak akan pernah selesai. Kami akan tersu memantau peningkatan dan pengembangan bahasa ini dan mempertahankan segala yang telah berfungsi dengan baik demi kemajuan bahasa pemrograman Swift kedepannya.
  _Tools_ ada bagian yang sangat penting pada ekosistem Swift. Kami akan terus berusaha kersa untuk mengintegrasikan dengan baik dalam hal peralatan pengembang, _build time_ yang lebih cepat, alat diagnosa yang baik, dan juga memberikan pengalaman pengembangan yang interaktif. _Tools_ dapat memberikan manfaat yang banyak pada proses pengembangan perangkat lunak, seperti _playground_ yang berbasis Swift pada Xcode, atau sebuah REPL berbasi web yang dapat bekerja dengan kode dari server berbasis Linux.

### Fitur

### Penerjemahan Dokumentasi Berbahasa Indonesia dan _Open Source_

### Dukungan _Platform_

#### _Platform_ dari Apple

#### Linux

#### _Platform_ Baru

## Perkenalan

Disini kita anda akan menemukan informasi tentang bagaimana cara menggunakan bahasa pemrograman Swift. Jika Swift adalah bahasa pemrograman yang baru untuk anda, maka anda bisa mengunjungi [_A Swift Tour_](https://developer.apple.com/library/prerelease/content/documentation/Swift/Conceptual/Swift_Programming_Language/GuidedTour.html#//apple_ref/doc/uid/TP40014097-CH2-ID1) terlebih dahulu untuk pengenalan singkat pada konsep-konsep dan fitur-fitur yang penting pada bahasa ini.

### Pemasangan Swift

Langkah pertama dalam menggunakan Swift adalah dengan mengunduh dan memasang _compiler_ dan komponen-komponen lain yang dibutuhkan. Anda dapat [\*mengunduh](https://swift.org/download) dan mengikuti instruksi sesuai dengan target _platform_ anda.
Untuk dapat mengikuti contoh-contoh berikut, pastikan anda menambahkan Swift pada `$PATH`.

#### Pemasangan Pada Sistem Operasi macOS

Lokasi yang lazim untuk _toolchain_ yang dapat diunduh pada macOS ada pada `/Library/Developer/Toolchains`. Anda dapat membuat _toolchan_ terbaru yang telah terpasang untuk digunakan pada terminal dengan menggunakan perintah berikut:

```
$ export TOOLCHAINS=swift
```

Untuk memilih toolchain yang telah terinstal yang lain, anda dapat menggunakan `identifier` variabel pada `TOOLCHAINS`. `identifier` tersebut dapat ditemukan pada berkas bernama `Info.plist` di dalam _toolchain_.

```
$ /usr/libexec/PlistBuddy -c "Print CFBundleIdentifier:" /Library/Developer/Toolchains/swift-4.0-RELEASE.xctoolchain/Info.plist
org.swift.4020170919

$ export TOOLCHAINS=org.swift.4020170919
```

#### Pemasangan Pada Sistem Operasi Linux

- **Ubuntu 16.04**

```
$ apt-get install \
          binutils \
          git \
          libc6-dev \
          libcurl3 \
          libedit2 \
          libgcc-5-dev \
          libpython2.7 \
          libsqlite3-0 \
          libstdc++-5-dev \
          libxml2 \
          pkg-config \
          tzdata \
          zlib1g-dev
```

- **Ubuntu 18.04**

```
$ apt-get install \
          binutils \
          git \
          libc6-dev \
          libcurl4 \
          libedit2 \
          libgcc-5-dev \
          libpython2.7 \
          libsqlite3-0 \
          libstdc++-5-dev \
          libxml2 \
          pkg-config \
          tzdata \
          zlib1g-dev
```

- **Ubuntu 20.04**

```
$ apt-get install \
          binutils \
          git \
          gnupg2 \
          libc6-dev \
          libcurl4 \
          libedit2 \
          libgcc-9-dev \
          libpython2.7 \
          libsqlite3-0 \
          libstdc++-9-dev \
          libxml2 \
          libz3-dev \
          pkg-config \
          tzdata \
          zlib1g-dev
```

- **CentOS 7**

```
$ yum install \
      binutils \
      gcc \
      git \
      glibc-static \
      libbsd-devel \
      libedit \
      libedit-devel \
      libicu-devel \
      libstdc++-static \
      pkg-config \
      python2 \
      sqlite

      # __block conflicts with clang's __block qualifier
      sed -i -e 's/\*__block/\*__libc_block/g' /usr/include/unistd.
```

- **CentOS 8**

```
$ yum install \
      binutils \
      gcc \
      git \
      glibc-static \
      libbsd-devel \
      libedit \
      libedit-devel \
      libicu-devel \
      libstdc++-static \
      pkg-config \
      python2 \
      sqlite
```

- **Amazon Linux**

```
$ yum install \
      binutils \
      gcc \
      git \
      glibc-static \
      gzip \
      libbsd \
      libcurl \
      libedit \
      libicu \
      libsqlite \
      libstdc++-static \
      libuuid \
      libxml2 \
      tar \
      tzdata
```

Apabila anda memasang _toolchain_ Swift pada sistem operasi berbasis Linux ke sebuah direktori dan bukan _root_ sistem, maka anda harus menjalankan perintah berikut menggunakan _path_ yang aktual dari pemasangan Swift anda.

```
$ export PATH=/path/to/Swift/usr/bin:"${PATH}"
```

#### Pemasangan Pada Sistem Operasi Windows

##### Visual Studio dan Swift

Anda harus memasang pemasang _toolchain_ dari [halaman pengunduhan berikut](https://swift.org/download) dan [Visual Studio 2019](https://visualstudio.microsoft.com/).

Berikut adalah komponen-komponen Visual Studio yang **dibutuhkan**:
| Komponen | Visual Studio ID |
|-------------------------------------------------------|-----------------------------------------------------|
| MSVC v142 - VS 2019 C++ x64/x86 build tools (v14.25)\* | Microsoft.VisualStudio.Component.VC.Tools.x86.x64 |
| Windows Universal C Runtime | Microsoft.VisualStudio.Component.Windows10SDK |
| Windows 10 SDK (10.0.17763.0)\*\* | Microsoft.VisualStudio.Component.Windows10SDK.17763 |

- Anda dapat memasang _toolset_ dengan _build_ yang lebih baru
  \*\* Anda dapat memasang SDK yang lebih baru

Lokasi pemasangan yang lazim untuk toolchain pada sistem operasi Windows adalah `%SystemDrive%\Library\Developer\Toolchains`.

##### Berkas-berkas Pendukung

Perlu diingat bahwa anda seharusnya menggunakan `x64 Native Tools for VS2019 Command Prompt` untuk dapat menjalankan _toolchain_. _Script_ `x64 Native Tools for VS2019 Command Prompt runs the DevEnv` dari Visual Studio dapat mengatur variabel lingkungan kerja yang diperlukan untuk menemukan _headers_ pada sistem.

Agar dapat membuat Windows SDK dapat diakses pada Swift, diperlukan _deploy_ untuk beberapa berkas ke dalam Windows SDK. Perintah berikut ini akan memodifikasi pemasangan Visual Studio. Untuk dapat menegsekusi perintah berikut anda perlu menjalankannya dari sisi _Administrator_.  
`x86 Native Tools for VS2019 Command Prompt.`

```
copy %SDKROOT%\usr\share\ucrt.modulemap "%UniversalCRTSdkDir%\Include\%UCRTVersion%\ucrt\module.modulemap"
copy %SDKROOT%\usr\share\visualc.modulemap "%VCToolsInstallDir%\include\module.modulemap"
copy %SDKROOT%\usr\share\visualc.apinotes "%VCToolsInstallDir%\include\visualc.apinotes"
copy %SDKROOT%\usr\share\winsdk.modulemap "%UniversalCRTSdkDir%\Include\%UCRTVersion%\um\module.modulemap"
```

Dikarenakan ini adalah pemasangan berkas-berkas ke dalam _image_ dari Visual Studio, berkas-berkas tersebut perlu disalin setiap kali Visual Studio diperbaharui.

##### Versi Swift

Anda dapat melakukan verifikasi bahwa anda menjalankan versi Swift yang diinginkan dengan cara memasuki `swift` _command_ dan memberikan _flag_ `--version` seperti berikut ini:

```
$ swift --version
Apple Swift version 2.2-dev (LLVM ..., Clang ..., Swift ...)
```

_Flag_ `-dev` yang disematkan pada nomor versi digunakan untuk mengindikasikan bahwa bahasa yang anda gunakan adalah sebuah _development build_ dan bukanlah versi yang sudah rilis.

### Penggunaan REPL

### Penggunaan LLDB Debugger

## Dokumentasi

### Bahasa Pemrograman Swift

### _Swift Package Manager_

### Pedoman Perancangan API

### Pedoman Migrasi

## Pedoman Penggunaan

### Dasar

Swift adalah sebuah bahasa pemrograman baru untuk pengembangan aplikasi iOS, watchOS, dan tvOS. Walaupun demikian, ada banyak hal pada Swift yang akan familiar dengan pengalaman anda menggunakan bahasa seperti C dan Objective-C.

Swift memberikan versinya sendiri dari seluruh tipe-tipe data yang fundamental yang ada pada bahasa C dan Objective-C, termasuk didalamnya `Int` untuk bilangan bulat, `Double` dan `Float` untuk bilangan berkoma, `Bool` untuk nilai kebenaran, dan `String` untuk data yang bersifat tekstual. Tidak hanya itu, Swift juga memberikan versi yang lebih baik dari tiga elemen utama pada tipe data koleksi, `Array`, `Set`, dan `Dictionary`, sebagaimana dijelaskan pada bagian Collection Types.

Sebagaimana pada bahasa pemrograman C, Swift benyak menggunakan variabel-variabel untuk menyimpan dan membuat referensi dengan cara memberikan nama pada setiap nilai. Swift juga membuat pengguanan yang lebih luas terhadap variabel-variabel yang tidak dapat diubah. Variabel-variabel ini disebut dengan konstan, dan jauh lebih baik daripada konstan yang ada pada C. Konstan-konstan digunakan dalam Swift untuk membuat kode lebih aman dan lebih jelas dalam aspek tujuan penggunaannya ketika anda bekerja menggunakan nilai-nilai yang tidak butuh diubah sewaktu-waktu.

Sebagai tambahan dari tipe data yang mirip dengan C, Swift mengusung sebuah tipe data lanjut yang tidak ditemukan pada bahasa Objective-C, seperti _Tuple_. _Tuple_ memudahkan anda dalam membuat suatu pengelompokan pada nilai-nilai. Anda dapat menggunakan sebuah _tuple_ untuk mengembalikan beberapa nilai dari sebuah fungsi sebagai satu nilai.

Swift juga mengenalkan tipe data opsional, dimana dapat membantu anda dalam menangani ketiadaan dalam sebuah nilai. Opsional dapat membantu anda untuk menyatakan adanya sebuah nilai dan ketiadaan nilai sama sekali. Menggunakan opsional sama seperti saat anda menggunakan nilai nil dengan pointer pada bahasa Objective-C, bedanya opsional di Swift tidak hanya dapat digunakan pada `class` tetapi juga dapat digunakan pada tipe data apapun. Tidak hanya opsional lebih aman digunakan dan lebih ekspresif atau mudah dibaca dibanding pointer `nil` pada Objective-C, opsional juga merupakan jantung dari banyaknya keunggulan dari fitur-fitur yang diusung Swift.

Swift adalah bahasa yang memiliki tipe yang aman digunakan, dengan kata lain bahasa Swift itu sendiri dapat membantu anda untuk memahami lebih jelas tentang tipe tipa dari variabel-variabel yang anda gunakan pada kode anda. Jika kode anda membutuhkan suatu tipe data `String` maka Swift akan memastikan data yang diberikan bukanlah `Int` karena suatu kesalahan. Begitu juga Swift akan mencegah anda dengan tidak sengaja memberikan sebuah variabel dengan tipe data String yang opsional pada bagian kode anda yang membutuhkan data String yang bukan opsional. Fitur ini memudahkan anda dalam menemukan dan memperbaiki _error_ sedini mungkin pada saat anda melakukan pemrograman.

#### Konstan dan Variabel

Konstan dan variabel dapat diasosiasikan dengans sebuah nama misalnya `maximumNumberOfLoginAttempts` atau `welcomeMessage` dengan nilai tertentu seperti angka `10` atau string `"Hello"`. Nilai dari sebuah konstan tidak dapat diubah ketika sudah ditetapkan dan variabel dapat diuabh ke nilai lain sewaktu-waktu.

##### Deklarasi

Konstan dan variable perlu dideklarasi terlebih dahulu sebelum digunakan. Anda dapat melakukan deklarasi dengan menggunakan kata kunci `let` dan untuk variable anda dapat menggunakan kata kunci `var`. Berikut adalah contoh bagaimana konstan dan variabel dapat digunakan untuk mengetahui jumlah upaya _login_ dari yang seorang pengguna terlah lakukan:

```swift
let maximumNumberOfLoginAttempts = 10
var currentLoginAttempt = 0
```

Kode ini dapat dibaca sebagai:

> "Deklarasikan sebuah konstan yang disebut `maximumNumberOfLoginAttempts` dan berikan nilainya `10`. Kemudian deklarasikan sebuah variabel yang disebut `currentLoginAttempt` dan berikan nilai awal `0`"

Dalam contih ini, nilai maksimum dari upaya login dideklarasikan sebagai konstan karena nilai maksimum tidak akan pernah berubah. Nilai sementara untuk upaya login sebagaimana dideklarasikan dengan nama `currentLoginAttempt` adalah sebuah variabel dikarenakan nilai ini dapat bertambah nilainya setiap kali dilakukan upaya login.

Anda dapat melakukan deklarasi beberapa variabel sekaligus dengan menggunakan satu baris yang dipisah dengan koma:

```swift
var x = 0.0, y = 0.0, z = 0.0
```

> **Catatan**  
> Jika nilai yang tersimpan dalam kode anda tidak akan berubah, selalu gunakan `let` untek mendeklaraskian sebuah nilai sebagai konstan. Gunakan variabel hanya untuk menyimpan nilai yang dapat berubah sewaktu-waktu.

##### Tipe Anotasi

##### Penamaan Konstan dan Variabel

##### Pencetakan Konstan dan Variabel

#### Komentar

#### Titik Koma

#### Bilangan

#### Bilangan Berkoma

### Operator Dasar

### String dan Karakter

### Koleksi

### Kontrol Alur

### Fungsi

### Pengakhiran

### Enumerasi

### Struct dan Class

### Properti

### Metode

### Subskrip

### Pewarisan

### Inisialisasi

### Deinisialisasi

### Perantaian Opsional

### Penanganan _Error_

### Perubahan Tipe

### Tipe Terbenam

### Ekstensi

### Protokol

### Generik

### Tipe Gamblang

### Penghitung Referensi Otomatis

### Keamanan Pada Memori

### Kontrol Akses

### Operator Lanjutan

## Referensi Bahasa

### Struktur Leksikal

### Tipe Data Gamblang

### Ekspresi

### Pernyataan

### Deklarasi

### Atribut

### Pola

### Parameter Generik dan Argumen

### Ringkasan Tatabahasa
