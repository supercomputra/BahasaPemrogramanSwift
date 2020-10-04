# Bahasa Pemrograman Swift

_Halaman ini dirangkum dan disadur dari halaman resmi komunitas https://docs.swift.org_ dan https://docs.swift.org/swift-book/

## Daftar Isi

[Isu: Daftar Isi](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/1)

Diluncurkan pada tahun 2014, bahasa pemrograman Swift telah menjadi salah satu bahasa yang sangat berkembang pesat di dalam sejarah bahasa pemograman. Ini dikarenakan Swift memberikan kemudahan dalam menulis perangkat lunak yang tidak hanya cepat namun juga aman secara perancangan. Tujuan dibuatnya bahasa ini cukup ambisius yaitu dengan Swift diharapkan semua orang dapat melakukan pemrograman sederhana yang jauh lebh mudah and hal yang rumit menjadi memungkinkan.

Untuk kalangan pelajar atau mahasiswa, mempelajari Swift dapat mejadi pengenalan yang sangat baik untuk mengenali praktik-praktik yang baik dan konsep pemrograman yang moderen. Dan juga karena bahasa ini terbuka — sehingga semua orang dapat berkontribusi pada pengembangannya - kemampuan dalam memahami bahasa Swift ini bahkan juga dapat diterapkan pada _platform_ yang lebih luas, mulai dari perangkat _mobile_, _desktop_, dan juga pada teknologi komputasi awan.

## Tentang Swift

![Logo Swift](https://swift.org/assets/images/swift.svg)

Swift adalah bahasa pemrograman yang serbaguna yang dibangun menggunakan sebuah pendekatan moderen terhadap keamanan, performa, dan _design patterns_ pada perangkat lunak.
Tujuan dari proyek Swift ini dibuat adalah untuk memberikan bahasa pemrograman terbaik untuk digunakan mulai dari pemrograman sistem, aplikasi _mobile_, aplikasi _desktop_, hingga meningkatkan skalabilitas pada perangkat lunak berbasis komputasi awan. Dan yang lebih penting lagi, Swift dirancang untuk membuat sebuah penulisan dan perawatan sebuah program yang "benar" menjadi lebih mudah untuk para pengembang. Untuk mencapai tujuan ini, kami percaya bahwa cara terbaik untuk menulis dalam Swift juga harus sesuai dengan kriteria sebagai berikut:

- **Aman**  
  Yang paling terpenting dalam menulis kode juga haruslah memiliki sifat yang aman. Sifat-sifat yang tidak dapat didefinisikan tentu adalah sebuahg musuh dari aspek keamanan, dan kesalahan-kesalahan pada pengembang seharusnya dapat ditangkap jauh sebelum perangkat lunat diproduksi. Namun dikarenakan Swift sangat memegang erat aspek kemanan didalamnya seringkali Swift terasa memiliki aturan-aturan yang cukup ketat, dengan perancangan bahasa pemrograman Swift seperti ini dipercaya dapat lebih memudahkan kita untuk jangka panjang.
- **Cepat**  
  Swift awalnya ditujukan sebagai pengganti untuk bahasa pemrograman yang berbasis C seperti C, C++, dan Objective-C. Dengan demikian, Swift harus mampu disandingkan dengan bahasa-bahasa tersebut dalam hal performanya menyelesaikan persoalan-persoalan yang umum. Performa harus juga memiliki sifat mudah diprediksi dan konsisten, namun performa cepat ini bukanlah yang mengindahkan kaidah-kaidah yang telah disepakati tetapi adalah cepat yang baik juga secara perancangan. Kita dengan mudah menemui banyak bahasa yang muncul dengan fitur-fitur yang baru, namun diantara bahasa-bahasa tersebut sangat sulit menemukan yang cepat secara performa.
- **Ekspresif**  
  Swift mendapatkan manfaat langsung dari puluhan tahun pengembangan ilmu komputer dimana pengembang dapat menggunakan _syntax_ yang mudah digunakan bersama dengan fitur-fitur moderen yang dapat diharapkan. Pengembangan Swift tidak akan pernah selesai. Kami akan tersu memantau peningkatan dan pengembangan bahasa ini dan mempertahankan segala yang telah berfungsi dengan baik demi kemajuan bahasa pemrograman Swift kedepannya.
  _Tools_ ada bagian yang sangat penting pada ekosistem Swift. Kami akan terus berusaha kersa untuk mengintegrasikan dengan baik dalam hal peralatan pengembang, _build time_ yang lebih cepat, alat diagnosa yang baik, dan juga memberikan pengalaman pengembangan yang interaktif. _Tools_ dapat memberikan manfaat yang banyak pada proses pengembangan perangkat lunak, seperti _playground_ yang berbasis Swift pada Xcode, atau sebuah REPL berbasi web yang dapat bekerja dengan kode dari server berbasis Linux.

Swift sangat mudah digunakan apabila anda adalah pemrogram yang masih baru. Bahasa pemrograman ini memiliki standar kualitas industri yang tidak hanya ekspresif tetapi juga gampang digunakan untuk aktifitas _scripting_. Dengan menulis kode Swift pada sebuah _Playground_ memudahkan anda untuk bereksperimen dengan melihat hasil dari kode yang anda tulis secara langsung tanpa menunggu lamanya proses perakitan oleh kompilator untuk sebuah aplikasi.

Swift dapat dengan mudah mengidentifikasi kesalahan-kesalahan umum pemrograman dengan mengadopsi kaidah-kaidah pemrogramana berikut:

- Variabel harus selalu diinisialisasi sebelum dapat digunakan.
- Indeks pada array selalu diperiksa untuk menemukan apakah ada kesalahan yeng memungkinkan indeks lebih besar dari ukuran array.
- Bilangan selalu diperiksa untuk mencegah terjadinya _overflow_.
- Nilai-nilai yang ditandai sebagai opsional dapat memastikan dirinya sendiri agar nilai `nil` ditangani secara eksplisit.
- Memori diatur secara otomatis.
- Penanganan _error_ dapat memungkinkan adanya pemulihan yang teratur dari kesalahan-kesalahan yang tidak diharapkan.

Kode Swift dikompilasi dan juga dioptimalkan penggunaannya agar dapat digunakan pada perangkat-perangkat moderen. Sintaksis dan _library_ standar telah dirancang berdasarkan pedoman-pedoman tertentu mendasari penulisan sehingga dapat memberikan hasil performa yang terbaik. Hal ini menjadikan kombinasi keamanan dan kecepatan yang membuat Swift adalah pilihan yang sangat baik untuk segala hal mulai dari sesederhana mencetak _"Hello, World!"_ hingga untuk penggunaan yang menyeluruh pada sistem operasi.

## Kompatibilitas Versi

Pedoman ini ditulis berdasarkan versi Swift 5.3 yang juga merupakan versi standar untuk digunakan pada Xcode 12. Anda dapat menggunakan Xcode 12 untuk melakukan perakitan pada target-target yang ditulis dengan Swift 5.3, Swift 3.2, atau Swift 4.

Fungsi-fungsi yang pada umumnya disematkan pada Swift 5.3 jyga akan tersedia apabila anda menggunakan Xcode 12 untuk merakit kode yang hanya menggunakan versi Swift 4 atau 4.2. Namun demikian ada beberapa hal yang hanya tersedia pada Swift versi 5.3 diantaranya adalah sebagai berikut:

- Fungsi-fungsi yang mengembalikan tipe gamblang membutuhkan _runtime_ Swift 5.1.
- Ekspresi `try?` tidak memberikan tambahan tingakatan keopsionalitasan. Ini dikarenakan untuk ekspresi terebut telah secara jelas mengembalikan nilai yang opsional.
- Inisialisasi literal untuk bilangan dengan nilai yang besar akan secara langsung diubah menjadi tipe bilangan yang benar. Contohnya untuk `UInt64(0xffff_ffff_ffff_ffff)` akan langsung diubah menjadi nilai yang benar dan tidak menjadi nilai yang _overflow_.

Sebuah target yang ditulis menggunakan Swift versi 5.3 dapat menggunakan dependen yang ditulis menggunakan versi 4.2 atau 4 dan juga berlaku sebaliknya. Dengan demikian, apabila anda menulis sebuah proyek yang besar dan terdiri dari beberapa kerangka kerja, anda dapat melakukan migrasi pada kode anda dari versi 4 ke versi 5.3 sekaligus.

### Fitur

### Penerjemahan Dokumentasi Berbahasa Indonesia dan _Open Source_

### Dukungan _Platform_

#### _Platform_ dari Apple

#### Linux

#### _Platform_ Baru

## Perkenalan

Tradisi pemrograman selalu dimulai dengan program pertama yang dapat mencetak kata-kata seperti _"Hello, World!_ pada laya. Dalam Swift, ini dapat dilakukan cukup dengan satu baris sederhana:

```swift
print("Hello, world!")
// Cetak "Hello, world!"
```

Jika anda pernah menulis kode dalam bahasa C atau Objective-C, sintaksis ini akan terlihat familiar bagi anda. Namun di dalam Swift, satu baris kode ini adalah satu program utuh. Anda tidak perlu melakukan _import_ _library_ lain untuk kemampuan masukan/keluaran untuk memproses tipe string. Kode yang telah ditulis pada cakupan global digunakan sebagai titik masuk dari program yang anda buat sehingga anda tidak membutuhkan sebuah fungsi `main()`. Anda juga tidak perlu menulis titik koma pada setiap kali mengakhiri pernyataan.

Perkenalan ini akan memberikan anda informasi dasar tentang bagaimana memulai menulis kode Swift dengan cara memperlihatkan anda bagaimana cara mencapai berbagai tugas-tugas lazim yang ada pada dunia pemrograman. Jangan kahwatir jika anda menemui sesuatu yang anda tidak pahami, segala hal yang diperkenalkan disini akan dijelaskan dengan detail pada bab berikutnya.

> Catatan  
> Untuk pengalaman yang terbaik, anda disarankan untuk membuka bab ini sebagai _playground_ di Xcode anda. _Playgrounds_ memungkinkan anda untuk menyunting setiap baris kode dan melihat hasilnya secara instan.  
> [Unduh _Playground_](https://docs.swift.org/swift-book/GuidedTour/GuidedTour.playground.zip)

### Nilai-nilai Sederhana

Anda dapat menggunakan `let` untuk membuat sebuah konstan dan `var` untuk membuat sebuah variabel. Nilai dari sebuah konstan tidak perlu diketahui pada masa kompilasi, walaupun demikian, anda harus memberikan nilai setidaknya sekali pada sebuah nilai yang bersifat konstan. Hal ini berarti anda dapat menggunakan beberapa konstan untuk menamai nilai yang tidak berubah dan banyak digunakan di berbagai tempat.

```swift
var myVariable = 41
myVariable = 50
let myConstant = 42
```

Sebuah konstan atau vaiabel harus memiliki tipe yang sema dengan nilai yang anda ingin tetapkan. Walaupun demikian, anda tidak selalu harus menulis tipe secara eksplisit. Dengan memberikan sebuah nilai pada saat anda membuat sebuah konstan atau vaiable akan memberitahu kompilator untuk menentukan sendiri tipe dari nilai tersebut. Dalam contoh di atas kompilator akan menentukan bahwa `myVariable` memiliki tipe `Int` atau _integer_ karena nilai awal dari variabel tersebut adalah suatu bilangan.

Jka nilai awal tidak memberikan informasi yang cukup atau apabila suatu nilai tidak memiliki nilai awal anda dapat menetapkan tipe dengan menulisnya setelah variabel yang dipisahkan oleh tanda titik dua.

```swift
let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70
```

> Eksperimen  
> Cobalah untuk menghilangkan fungsi untuk mengubah nilai menjadi `String` pada baris terakhir. _Error_ apakah yang anda dapatkan?

Sebuah nilai dapat pula disematkan pada `String` dengan cara yang lebih sederhana. Anda dapat menulis tanda kurung yang disertai dengan tanda garis miring terbalik sebelum tanda kurung pembuka. Contohnya:

```swift
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."
```

> Eksperimen  
> Cobalah gunakan \() untuk menyematkan nilai berupa kalkulasi bilangan berkoma di dalam sebuah `String`. Anda juga dapat mencoba menyematkan nama seseorang di dalam sebuah kalimat sapaan.

Anda dapat menggunakan tiga buah tanda kutip ganda (""") untuk `String`yang ditulis dengan dalam beberapa baris. Indentasi yang ada pada setiap awal baris yang dibubuhi tanda kutip akan dihapus apabila sesuai dengan indentasi dari tanda kutip penutup. Contohnya:

```swift
let quotation = """
I said "I have \(apples) apples."
And then I said "I have \(apples + oranges) pieces of fruit."
"""
```

Anda dapat membuat _array_ dan _dictionary_ menggunakan tanda kurung siku ([]) dan mengakses elemennya dengan cara menulis indeks atau kata kuncinya di dalam tanda kurung siku. Tanda koma pada akhir elemen dapat ditulis ataupun tidak.

```swift
var shoppingList = ["catfish", "water", "tulips"]
shoppingList[1] = "bottle of water"

var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
occupations["Jayne"] = "Public Relations"
```

Sebuah _array_ akan secara otomatis mengembang dan meningkatkan kapasitasnya seiring anda menambahkan elemen-elemen ke dalamnya.

```swift
shoppingList.append("blue paint")
print(shoppingList)
```

Untuk membuat sebuah _array_ atau _dictionary_ kosong, anda dapat menggunakan sintaksis untuk inisialisasi.

```swift
let emptyArray = [String]()
let emptyDictionary = [String: Float]()
```

Apabila informasi tipa dapat ditentukan sendirinya oleh kompilator maka anda dapat menulis _array_ kosong sebagai `[]` dan _dictionary_ kosong sebagai `[:]`. Contohnya ketika anda menetapkan sebuah nilai baru untuk sebuah variabel atau memberikan sebuah argumen pada suatu fungsi.

```swift
shoppingList = []
occupations = [:]
```

### Alur Kontrol

Anda dapat menggunakan `if` dan `switch` untuk penulisan pernyataan kondisional. Selain itu anda juga dapat menggunakan `for-in`, `while`, dan `repeat-while` untuk menulis pernyataan pengulangan. Jika ingin, anda juga dapat membubuhkan tanda kurung diantara pernyataan kondisi atau variabel yang mengulang. Tanda kurung kurawal `{}` dibutuhkan untuk dibubuhkan di antara isi dari pernyataan pengulangan.

```swift
let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}
print(teamScore)
// "11" tercetak
```

Di dalam sebuah peryataan yang diawali dengan sintaksis `if`, suatu kondisi harus memiliki ekspresi yang bersifat _boolean_. Hal ini berarti suatu kode seperti `if score { ... }` adalah sebuah kesalahan karena bukan merupakan komparasi implisit terhadap nol (0).

Anda dapat menggunakan `if` dan `let` sekaligus untuk menangani nilai yang mungkin bisa hilang. Nilai-nilai ini di dalam Swift direpresentasikan sebagai opsional. Sebuah nilai opsional dapat memiliki nilai atau `nil` untuk menunjukan suatu ketiadaan nilai. Tulislah tanda tanya (?) setelah menulis tipe dari nilai tersebut untuk menandai suatu nilai sebagai opsional.

```swift
var optionalString: String? = "Hello"
print(optionalString == nil)
// Mencetak "false"

var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}
```

> Eksperimen  
> Gantilah `optionalName` menjadi `nil`. Apakah nilai `greeting` yang anda dapatkan? Tambahkan sebuah klausa `else` yang memberikan nilai `greeting` berbeda apabila `optionalName` memiliki nilai `nil`

Apabila nila optional adalah `nil`, kondisi menjadi `false` dan blok kode yang ada di dalam kurung kurawal akan dilewati. Sebaliknya, nilai opsional menjadi terbuka dan ditetapkan kepada konstan yang dinyatakan setelah `let` yang membuat nilai tersebut dapat dipakai di dalam blok kode di dalamnya.

Cara lain untuk menggunakan nilai opsional adalah dengan membubuhkan nilai lazim menggunakan operator `??`. Ini memungkinkan apabila nilai optional adalah `nil` nilai lazim tersebuh dapat digunakan.

```swift
let nickname: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickname ?? fullName)"
```

Sintaksis `switch` dapat digunakan dengan tipe data apapun dan bermacam operasi komparasi. Dengan kata lain penggunaanya tidak terbatas pada bilangan dan pengujian terhadap kesamaan.

```swift
let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}
// Mencetak "Is it a spicy red pepper?"
```

> Eksperimen  
> Cobalah hapus kasus didalam blok kode `default`. Kesalahan apakah yang anda dapatkan?

Anda dapat melihat dari potongan kode di atas bagimana `let` dapat digunakan di dalam pernyataan berbasis `switch`.

Setelah mengeksekusi kode di dalam suatu kondisi yang sesuai dengan yang dinyatakan oleh pernyataan `switch` program tersebut akan keluar dari pernyataan `switch` di atas. Eksekusi kemudian tidak akan berlanjut ke kasus berikutnya sehingga tidak dibutuhkan suatu pernyataan `break` secara eksplisit di dalam setiap kasus.

Anda dapat menggunakan `for-in` untuk mengiterasi masing-masing isi yang ada di dalam suatu _dictionary_ dengan cara membubuhkan sepasang nama-nama untuk digunakan pada setiap pasangan kata kunci dan nilai yang tersemat didalamnya. _Dictionary_ adalah sebuah keleksi tak berurut, akibatnya nilai-nilai dan kata-kata kunci yang ada didalamnya akan diiterasi dalam urutan yang dapat berubah-ubah.

```swift
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
for (kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest)
// Prints "25"
```

> Eksperimen  
> Cobalah tambahkan variabel lain untuk tetap melacak jenis dari nilai yang mana yang merupakan nilai terbesar dan juga untuk mengetahui apakah jenis angka tersebut sebelumnya.

Anda dapat menggunakan `while` untuk mengulang sebuah blok kode hingga suatu kondisi tertentu berubah. Kondisi dari suatu pengulangan bisa ditulis di akhir, ini akan menjadikan blok kode dari pengulangan yang anda tulis akan dijalankan setidaknya sekali.

```swift
var n = 2
while n < 100 {
    n *= 2
}
print(n)
// Prints "128"

var m = 2
repeat {
    m *= 2
} while m < 100
print(m)
// Prints "128"
```

Anda dapat menyimpan indeks di dalam sebuah pengulanagn dengan menggunakan `..<` untuk membuat suatu rentangan deret indeks.

```swift
var total = 0
for i in 0..<4 {
    total += i
}
print(total)
// Prints "6"
```

Anda dapat menggunakan `..<` untuk membuat sebuah sebuah rentangan yang menghilangkan nilai atasnya dan menggunakan `...` untuk membuat rentangan yang menyertakan nilai bawah dan juga atasnya.

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
