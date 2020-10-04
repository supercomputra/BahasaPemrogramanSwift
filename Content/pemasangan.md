---
date: 2020-10-04 18:56
language: id
---

# Pemasangan Swift

Langkah pertama dalam menggunakan Swift adalah dengan mengunduh dan memasang _compiler_ dan komponen-komponen lain yang dibutuhkan. Anda dapat [\*mengunduh](https://swift.org/download) dan mengikuti instruksi sesuai dengan target _platform_ anda.
Untuk dapat mengikuti contoh-contoh berikut, pastikan anda menambahkan Swift pada `$PATH`.

## Pemasangan Pada Sistem Operasi macOS

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

## Pemasangan Pada Sistem Operasi Linux

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

## Pemasangan Pada Sistem Operasi Windows

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://swift.org/getting-started/#installing-swift)

### Visual Studio dan Swift

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

### Berkas-berkas Pendukung

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

### Versi Swift

Anda dapat melakukan verifikasi bahwa anda menjalankan versi Swift yang diinginkan dengan cara memasuki `swift` _command_ dan memberikan _flag_ `--version` seperti berikut ini:

```
$ swift --version
Apple Swift version 2.2-dev (LLVM ..., Clang ..., Swift ...)
```

_Flag_ `-dev` yang disematkan pada nomor versi digunakan untuk mengindikasikan bahwa bahasa yang anda gunakan adalah sebuah _development build_ dan bukanlah versi yang sudah rilis.

## Penggunaan REPL

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://swift.org/getting-started/#using-the-repl)

## Penggunaan _Package Manager_

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://swift.org/getting-started/#using-the-package-manager)

## Penggunaan _LLDB Debugger_

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://swift.org/getting-started/#using-the-lldb-debugger)

# Dokumentasi

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://swift.org/documentation/)

## Bahasa Pemrograman Swift

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://swift.org/documentation/#the-swift-programming-language)

## _Swift Package Manager_

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://swift.org/documentation/#swift-package-manager)

## Pedoman Perancangan API

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://swift.org/documentation/#api-design-guidelines)

## Pedoman Migrasi

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://swift.org/documentation/#migration-guides)

