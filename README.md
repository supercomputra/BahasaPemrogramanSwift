# Pedoman Dasar Bahasa Pemrograman Swift
*Halaman ini disadur dari halaman resmi komunitas https://docs.swift.org*

Diluncurkan pada tahun 2014, bahasa pemrograman Swift dengan sangat cepat telah menjadi salah satu bahasa yang sangat berkembang di dalam sejarah bahasa pemograman. Ini dikarenakan Swift memberikan kemudahan dalam menulis perangkat lunak yang tidak hanya cepat namun juga aman secara perancangan. Tujuan dibuatnya bahasa ini cukup ambisius yaitu dengan Swift semua orang dapat melakukan pemrograman yang sederhana menjadi mudah and hal yang rumit menjadi memungkinkan.

Untuk pelajar atau mahasiswa, mempelajari Swift dapat mejadi pengenalan yang sangat baik untuk mengenali praktik-praktik yang baik dan konsep pemrograman yang moderen. Dan juga karena bahasa ini terbuka — sehingga semua orang dapat berkontribusi pada pengembangannya - kemampuan dalam memahami bahasa Swift ini bahkan juga dapat diterapkan pada *platform* yang lebih luas, mulai dari perangkat *mobile*, *desktop*, dan juga pada teknologi komputasi awan.

## Tentang Swift
![Logo Swift](https://swift.org/assets/images/swift.svg)  
Swift adalah bahasa pemrograman yang serbaguna yang dibangun menggunakan sebuah pendekatan moderen terhadap keamanan, performa, dan *design patterns* pada perangkat lunak.
Tujuan dari proyek Swift dibuat adalah untuk memberikan bahasa pemrograman terbaik untuk digunakan mulai dari pemrograman sistem, aplikasi *mobile*, aplikasi *desktop*, hingga meningkatkan skalabilitas pada perangkat lunak berbasis komputasi awan. Dan yang lebih penting lagi, Swift dirancang untuk membuat sebuah penulisan dan perawatan sebuah program yang "benar" menjadi lebih mudah untuk para pengembang. Untuk mencapai tujuan ini, kami percaya bahwa cara terbaik untuk menulis dalam Swift juga harus sesuai dengan kriteria sebagai berikut:
- **Aman**  
Yang paling terpenting dalam menulis kode juga haruslah memiliki sifat yang aman. Sifat-sifat yang tidak dapat didefinisikan tentu adalah sebuahg musuh dari aspek keamanan, dan kesalahan-kesalahan pada pengembang seharusnya dapat ditangkap jauh sebelum perangkat lunat diproduksi. Namun dikarenakan Swift sangat memegang erat aspek kemanan didalamnya seringkali Swift terasa memiliki aturan-aturan yang cukup ketat, dengan perancangan bahasa pemrograman Swift seperti ini dipercaya dapat lebih memudahkan kita untuk jangka panjang. 
- **Cepat**  
Swift awalnya ditujukan sebagai pengganti untuk bahasa pemrograman yang berbasis C seperti C, C++, dan Objective-C. Dengan demikian, Swift harus mampu disandingkan dengan bahasa-bahasa tersebut dalam hal performanya menyelesaikan persoalan-persoalan yang umum. Performa harus juga memiliki sifat mudah diprediksi dan konsisten, namun performa cepat ini bukanlah yang mengindahkan kaidah-kaidah yang telah disepakati tetapi adalah cepat yang baik juga secara perancangan. Kita dengan mudah menemui banyak bahasa yang muncul dengan fitur-fitur yang baru, namun diantara bahasa-bahasa tersebut sangat sulit menemukan yang cepat secara performa.
- **Ekspresif**  
Swift mendapatkan manfaat langsung dari puluhan tahun pengembangan ilmu komputer dimana pengembang dapat menggunakan *syntax* yang mudah digunakan bersama dengan fitur-fitur moderen yang dapat diharapkan. Pengembangan Swift tidak akan pernah selesai. Kami akan tersu memantau peningkatan dan pengembangan bahasa ini dan mempertahankan segala yang telah berfungsi dengan baik demi kemajuan bahasa pemrograman Swift kedepannya.
*Tools* ada bagian yang sangat penting pada ekosistem Swift. Kami akan terus berusaha kersa untuk mengintegrasikan dengan baik dalam hal peralatan pengembang, *build time* yang lebih cepat, alat diagnosa yang baik, dan juga memberikan pengalaman pengembangan yang interaktif. *Tools* dapat memberikan manfaat yang banyak pada proses pengembangan perangkat lunak, seperti *playground* yang berbasis Swift pada Xcode, atau sebuah REPL berbasi web yang dapat bekerja dengan kode dari server berbasis Linux.

### Fitur-fitur

### Penerjemahan Dokumentasi Berbahasa Indonesia dan *Open Source*

### Dukungan *Platform*

#### *Platform-Platform* dari Apple

#### Linux

#### *Platform-Platform* Baru

## Memulai
Disini kita anda akan menemukan informasi tentang bagaimana cara menggunakan bahasa pemrograman Swift. Jika Swift adalah bahasa pemrograman yang baru untuk anda, maka anda bisa mengunjungi [*A Swift Tour*](https://developer.apple.com/library/prerelease/content/documentation/Swift/Conceptual/Swift_Programming_Language/GuidedTour.html#//apple_ref/doc/uid/TP40014097-CH2-ID1) terlebih dahulu untuk pengenalan singkat pada konsep-konsep dan fitur-fitur yang penting pada bahasa ini.

### Pemasangan Swift
Langkah pertama dalam menggunakan Swift adalah dengan mengunduh dan memasang *compiler* dan komponen-komponen lain yang dibutuhkan. Anda dapat [*mengunduh](https://swift.org/download) dan mengikuti instruksi sesuai dengan target *platform* anda.
Untuk dapat mengikuti contoh-contoh berikut, pastikan anda menambahkan Swift pada `$PATH`.

#### Pemasangan Pada Sistem Operasi macOS
Lokasi yang lazim untuk *toolchain* yang dapat diunduh pada macOS ada pada `/Library/Developer/Toolchains`. Anda dapat membuat *toolchan* terbaru yang telah terpasang untuk digunakan pada terminal dengan menggunakan perintah berikut:
```
$ export TOOLCHAINS=swift
```
Untuk memilih toolchain yang telah terinstal yang lain, anda dapat menggunakan `identifier` variabel pada `TOOLCHAINS`. `identifier` tersebut dapat ditemukan pada berkas bernama `Info.plist` di dalam *toolchain*.
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

Apabila anda memasang *toolchain* Swift pada sistem operasi berbasis Linux ke sebuah direktori dan bukan *root* sistem, maka anda harus menjalankan perintah berikut menggunakan *path* yang aktual dari pemasangan Swift anda.
```
$ export PATH=/path/to/Swift/usr/bin:"${PATH}"
```

#### Pemasangan Pada Sistem Operasi Windows
##### Visual Studio dan Swift
Anda harus memasang pemasang *toolchain* dari [halaman pengunduhan berikut](https://swift.org/download) dan [Visual Studio 2019](https://visualstudio.microsoft.com/).

Berikut adalah komponen-komponen Visual Studio yang **dibutuhkan**:
| Komponen                                              | Visual Studio ID                                    |
|-------------------------------------------------------|-----------------------------------------------------|
| MSVC v142 - VS 2019 C++ x64/x86 build tools (v14.25)* | Microsoft.VisualStudio.Component.VC.Tools.x86.x64   |
| Windows Universal C Runtime                           | Microsoft.VisualStudio.Component.Windows10SDK       |
| Windows 10 SDK (10.0.17763.0)**                       | Microsoft.VisualStudio.Component.Windows10SDK.17763 |
* Anda dapat memasang *toolset* dengan *build* yang lebih baru
** Anda dapat memasang SDK yang lebih baru

Lokasi pemasangan yang lazim untuk toolchain pada sistem operasi Windows adalah `%SystemDrive%\Library\Developer\Toolchains`.

##### Berkas-berkas Pendukung
Perlu diingat bahwa anda seharusnya menggunakan `x64 Native Tools for VS2019 Command Prompt` untuk dapat menjalankan *toolchain*. *Script* `x64 Native Tools for VS2019 Command Prompt runs the DevEnv` dari Visual Studio dapat mengatur variabel lingkungan kerja yang diperlukan untuk menemukan *headers* pada sistem.

Agar dapat membuat Windows SDK dapat diakses pada Swift, diperlukan *deploy* untuk beberapa berkas ke dalam Windows SDK. Perintah berikut ini akan memodifikasi pemasangan Visual Studio. Untuk dapat menegsekusi perintah berikut anda perlu menjalankannya dari sisi *Administrator*.  
`x86 Native Tools for VS2019 Command Prompt.`
```
copy %SDKROOT%\usr\share\ucrt.modulemap "%UniversalCRTSdkDir%\Include\%UCRTVersion%\ucrt\module.modulemap"
copy %SDKROOT%\usr\share\visualc.modulemap "%VCToolsInstallDir%\include\module.modulemap"
copy %SDKROOT%\usr\share\visualc.apinotes "%VCToolsInstallDir%\include\visualc.apinotes"
copy %SDKROOT%\usr\share\winsdk.modulemap "%UniversalCRTSdkDir%\Include\%UCRTVersion%\um\module.modulemap"
```
Dikarenakan ini adalah pemasangan berkas-berkas ke dalam *image* dari Visual Studio, berkas-berkas tersebut perlu disalin setiap kali Visual Studio diperbaharui.

##### Versi Swift
Anda dapat melakukan verifikasi bahwa anda menjalankan versi Swift yang diinginkan dengan cara memasuki `swift` *command* dan memberikan *flag* `--version` seperti berikut ini: 
```
$ swift --version
Apple Swift version 2.2-dev (LLVM ..., Clang ..., Swift ...)
```
*Flag* `-dev` yang disematkan pada nomor versi digunakan untuk mengindikasikan bahwa bahasa yang anda gunakan adalah sebuah *development build* dan bukanlah versi yang sudah rilis.

### Penggunaan REPL

### Penggunaan LLDB Debugger

## Dokumentasi
### Bahasa Pemrograman Swift

### *Swift Package Manager*

### Pedoman Perancangan API

### Pedoman Migrasi

## Pedoman Penggunaan
### Dasar-dasar

### Operator Dasar

### String dan Karakter

### Koleksi

### Kontrol Alur

### Fungsi

### Pengakhiran

### Pencacahan

### Struct dan Class

### Properti

### Metode

### Subskrip

### Pewarisan

### Inisialisasi

### Deinisialisasi

### Perantaian Opsional

### Penanganan *Error*

### *Type Casting*

### *Nested Types*

### Ekstensi

### Protokol

### Generik

### *Opaque Types*

### Penghitung Referensi Otomatis

### Keamanan Memori

### Kontrol Akses

### Operator-operator Lanjutan

## Referensi Bahasa

### Struktur Leksikal

### Tipe

### Ekspresi

### Pernyataan

### Deklarasi

### Atribut

### Pola

### Parameter Generik dan Argumen

### Ringkasan Tatabahasa
