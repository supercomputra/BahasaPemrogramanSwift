---
date: 2020-10-04 18:56
language: id
---

# Pedoman Lanjutan

## Dasar

Swift adalah sebuah bahasa pemrograman baru untuk pengembangan aplikasi iOS, watchOS, dan tvOS. Walaupun demikian, ada banyak hal pada Swift yang akan familiar dengan pengalaman anda menggunakan bahasa seperti C dan Objective-C.

Swift memberikan versinya sendiri dari seluruh tipe-tipe data yang fundamental yang ada pada bahasa C dan Objective-C, termasuk didalamnya `Int` untuk bilangan bulat, `Double` dan `Float` untuk bilangan berkoma, `Bool` untuk nilai kebenaran, dan `String` untuk data yang bersifat tekstual. Tidak hanya itu, Swift juga memberikan versi yang lebih baik dari tiga elemen utama pada tipe data koleksi, `Array`, `Set`, dan `Dictionary`, sebagaimana dijelaskan pada bagian Collection Types.

Sebagaimana pada bahasa pemrograman C, Swift benyak menggunakan variabel-variabel untuk menyimpan dan membuat referensi dengan cara memberikan nama pada setiap nilai. Swift juga membuat pengguanan yang lebih luas terhadap variabel-variabel yang tidak dapat diubah. Variabel-variabel ini disebut dengan konstanta, dan jauh lebih baik daripada konstanta yang ada pada C. Konstanta digunakan dalam Swift untuk membuat kode lebih aman dan lebih jelas dalam aspek tujuan penggunaannya ketika anda bekerja menggunakan nilai-nilai yang tidak butuh diubah sewaktu-waktu.

Sebagai tambahan dari tipe data yang mirip dengan C, Swift mengusung sebuah tipe data lanjut yang tidak ditemukan pada bahasa Objective-C, seperti _Tuple_. _Tuple_ memudahkan anda dalam membuat suatu pengelompokan pada nilai-nilai. Anda dapat menggunakan sebuah _tuple_ untuk mengembalikan beberapa nilai dari sebuah fungsi sebagai satu nilai.

Swift juga mengenalkan tipe data opsional, dimana dapat membantu anda dalam menangani ketiadaan dalam sebuah nilai. Opsional dapat membantu anda untuk menyatakan adanya sebuah nilai dan ketiadaan nilai sama sekali. Menggunakan opsional sama seperti saat anda menggunakan nilai nil dengan pointer pada bahasa Objective-C, bedanya opsional di Swift tidak hanya dapat digunakan pada `class` tetapi juga dapat digunakan pada tipe data apapun. Tidak hanya opsional lebih aman digunakan dan lebih ekspresif atau mudah dibaca dibanding pointer `nil` pada Objective-C, opsional juga merupakan jantung dari banyaknya keunggulan dari fitur-fitur yang diusung Swift.

Swift adalah bahasa yang memiliki tipe yang aman digunakan, dengan kata lain bahasa Swift itu sendiri dapat membantu anda untuk memahami lebih jelas tentang tipe tipa dari variabel-variabel yang anda gunakan pada kode anda. Jika kode anda membutuhkan suatu tipe data `String` maka Swift akan memastikan data yang diberikan bukanlah `Int` karena suatu kesalahan. Begitu juga Swift akan mencegah anda dengan tidak sengaja memberikan sebuah variabel dengan tipe data String yang opsional pada bagian kode anda yang membutuhkan data String yang bukan opsional. Fitur ini memudahkan anda dalam menemukan dan memperbaiki _error_ sedini mungkin pada saat anda melakukan pemrograman.

### Konstanta dan Variabel

Konstanta dan variabel dapat diasosiasikan dengans sebuah nama misalnya `maximumNumberOfLoginAttempts` atau `welcomeMessage` dengan nilai tertentu seperti angka `10` atau string `"Hello"`. Nilai dari sebuah konstan tidak dapat diubah ketika sudah ditetapkan dan variabel dapat diuabh ke nilai lain sewaktu-waktu.

#### Deklarasi

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

> **CATATAN**
> Jika nilai yang tersimpan dalam kode anda tidak akan berubah, selalu gunakan `let` untek mendeklaraskian sebuah nilai sebagai konstan. Gunakan variabel hanya untuk menyimpan nilai yang dapat berubah sewaktu-waktu.

#### Anotasi Tipe Data

Anda dapat menyertakan anotasi tipe data ketika mendeklarasikan sebuah konstanta atau variabel untuk menjelaskan jenis isian nilai yang dapat ditampung di konstanta atau variabel tersebut. Cara menuliskan anotasi adalah dengan menuliskan titik dua (`:`) di belakang nama konstanta atau variabel, diikuti spasi, kemudian diikuti dengan jenis tipe data yang dimaksud.

Baris kode berikut mencontohkan pemberian anotasi tipe ke variabel bernama `welcomeMessage` dan menyatakan bahwa variabel tersebut dapat menyimpan nilai bertipe `String`.

```swift
var welcomeMessage: String
```

Tanda titik dua pada deklarasi di atas dapat diartikan sebagai "... dapat diisi dengan tipe data...", maka kode di atas dapat dibahasakan menjadi:

"Deklarasikan variabel dengan nama `welcomeMessage` yang dapat diisi dengan tipe data `String`."

Dari pembahasaan kalimat tadi, dapat dimengerti bahwa variabel tersebut dapat menyimpan nilai apapun selama memiliki tipe data `String`. Anotasi ini menyatakan jenis tipe data yang dapat ditampung.

Variabel `welcomeMessage` tersebut kini dapat diberi nilai bertipe `String` tanpa memunculkan _error_.

```swift
welcomeMessage = "Hello"
```

Anda dapat mendefinisikan beberapa variabel dengan tipe data yang sama dalam satu baris saja. Tiap variabel dipisahkan oleh tanda koma, diikuti dengan anotasi tipe data setelah variabel terakhir.

```swift
var red, green, blue: Double
```

> **CATATAN**
> Dalam prakteknya, penulisan anotasi tipe data akan jarang Anda butuhkan. Apabila Anda menyediakan nilai awal untuk sebuah konstanta atau variabel, Swift dapat menentukan tipe data untuk konstanta atau variabel tersebut dari isian nilai awal yang Anda berikan sesuai dengan yang tertulis di _Type Safety_ dan _Type Inference_. Pada contoh `welcomeMessage` di atas, tidak ada nilai awal yang diberikan sehingga tipe data dari variabel `welcomeMessage` ditentukan dari anotasi dan tidak ditentukan dari nilai awalnya.

#### Penamaan Konstanta dan Variabel

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://docs.swift.org/swift-book/LanguageGuide/BasicOperators.html#ID313)

#### Pencetakan Konstanta dan Variabel

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://docs.swift.org/swift-book/LanguageGuide/BasicOperators.html#ID314)

### Komentar

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://docs.swift.org/swift-book/LanguageGuide/BasicOperators.html#ID315)

### Titik Koma

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://docs.swift.org/swift-book/LanguageGuide/BasicOperators.html#ID316)

### Bilangan

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://docs.swift.org/swift-book/LanguageGuide/BasicOperators.html#ID317)

#### Batas Bilangan

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://docs.swift.org/swift-book/LanguageGuide/BasicOperators.html#ID318)

#### Int

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://docs.swift.org/swift-book/LanguageGuide/BasicOperators.html#ID319)

#### UInt

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://docs.swift.org/swift-book/LanguageGuide/BasicOperators.html#ID320)

### Bilangan Berkoma

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://docs.swift.org/swift-book/LanguageGuide/BasicOperators.html#ID321)

### Pengamanan dan Inferensi Tipe

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://docs.swift.org/swift-book/LanguageGuide/BasicOperators.html#ID322)

### Literal Numerik

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://docs.swift.org/swift-book/LanguageGuide/BasicOperators.html#ID323)

### Pengonversian Tipe Numerik

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://docs.swift.org/swift-book/LanguageGuide/BasicOperators.html#ID324)

#### Pengonversian Tipe Bilangan Bulat

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://docs.swift.org/swift-book/LanguageGuide/BasicOperators.html#ID325)

#### Pengonversian Tipe Bilangan Bulat & Bilangan Berkoma

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://docs.swift.org/swift-book/LanguageGuide/BasicOperators.html#ID326)

### Pengaliasan Tipe

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://docs.swift.org/swift-book/LanguageGuide/BasicOperators.html#ID327)

### _Boolean_

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://docs.swift.org/swift-book/LanguageGuide/BasicOperators.html#ID328)

### _Tuple_

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://docs.swift.org/swift-book/LanguageGuide/BasicOperators.html#ID329)

### _Opsional_

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://docs.swift.org/swift-book/LanguageGuide/BasicOperators.html#ID330)

#### Kenihilan

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://docs.swift.org/swift-book/LanguageGuide/BasicOperators.html#ID331)

#### Pernyataan Kondisional dan Pembukaan Nilai

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://docs.swift.org/swift-book/LanguageGuide/BasicOperators.html#ID332)

#### Pengikatan Nilai Opsional

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://docs.swift.org/swift-book/LanguageGuide/BasicOperators.html#ID333)

#### Pernyataan Kondisional dan Pembukaan Nilai Implisit

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://docs.swift.org/swift-book/LanguageGuide/BasicOperators.html#ID334)

### Asersi dan Prekondisi

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://docs.swift.org/swift-book/LanguageGuide/BasicOperators.html#ID335)

## Operator Dasar

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://docs.swift.org/swift-book/LanguageGuide/BasicOperators.html)

## String dan Karakter

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://docs.swift.org/swift-book/LanguageGuide/StringsAndCharacters.html)

## Tipe Koleksi

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://docs.swift.org/swift-book/LanguageGuide/CollectionTypes.html)

## Kontrol Alur

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://docs.swift.org/swift-book/LanguageGuide/ControlFlow.html)

## Fungsi

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://docs.swift.org/swift-book/LanguageGuide/Functions.html#)

## Klosur

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://docs.swift.org/swift-book/LanguageGuide/Closures.html)

## Enumerasi

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://docs.swift.org/swift-book/LanguageGuide/Enumerations.html)

## Struct dan Class

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://docs.swift.org/swift-book/LanguageGuide/ClassesAndStructures.html)

## Properti

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://docs.swift.org/swift-book/LanguageGuide/Properties.html)

## Metode

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://docs.swift.org/swift-book/LanguageGuide/Methods.html)

## Subskrip

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://docs.swift.org/swift-book/LanguageGuide/Methods.html)

## Pewarisan

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://docs.swift.org/swift-book/LanguageGuide/Inheritance.html)

## Inisialisasi

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://docs.swift.org/swift-book/LanguageGuide/Initialization.html)

## Deinisialisasi

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://docs.swift.org/swift-book/LanguageGuide/Deinitialization.html)

## Perantaian Opsional

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://docs.swift.org/swift-book/LanguageGuide/OptionalChaining.html)

## Penanganan Kesalahan

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://docs.swift.org/swift-book/LanguageGuide/ErrorHandling.html)

## Perubahan Tipe

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://docs.swift.org/swift-book/LanguageGuide/TypeCasting.html)

## Tipe Berlapis

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://docs.swift.org/swift-book/LanguageGuide/NestedTypes.html)

## Ekstensi

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://docs.swift.org/swift-book/LanguageGuide/Extensions.html)

## Protokol

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://docs.swift.org/swift-book/LanguageGuide/Protocols.html)

## Generik

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://docs.swift.org/swift-book/LanguageGuide/Generics.html)

## Tipe Gamblang

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://docs.swift.org/swift-book/LanguageGuide/OpaqueTypes.html)

## Penghitung Referensi Otomatis

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://docs.swift.org/swift-book/LanguageGuide/AutomaticReferenceCounting.html)

## Keamanan Pada Memori

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://docs.swift.org/swift-book/LanguageGuide/MemorySafety.html)

## Kontrol Akses

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://docs.swift.org/swift-book/LanguageGuide/AccessControl.html)

## Operator Lanjutan

[[dibutuhkan penerjemahan]](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/new)
[[dokumen rujukan]](https://docs.swift.org/swift-book/LanguageGuide/AdvancedOperators.html)
