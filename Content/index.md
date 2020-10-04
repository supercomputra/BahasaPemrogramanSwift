---
date: 2020-10-04 18:56
language: id
---

#  Selamat Datang di Bahasa Pemrograman Swift
[Daftar Isi](https://github.com/supercomputra/pedoman-dasar-bahasa-pemrograman-swift/issues/1)

Swift adalah salah satu bahasa pemrograman terbaik untuk menulis perangkat lunak terlepas dari apakah itu untuk perangkat _mobile_, _desktop_, _server_, atau _platform_ apapun selama itu menjalankan kode. Swift adalah sebuah bahasa pemrograman interaktif yang aman dan memiliki performa yang sangat cepat yang dikombinasikan dengan paradigma berpikir bahasa pemrograman moderen dengan menjunjung kaidah-kaidah dari kultur _engineering_ di Apple dan beragamnya kontribusi dari komunitas _open-source_. Kompilator Swift juga dioptimalkan demi mengutamakan performa sekaligus juga dioptimalkan untuk kemudahan dalam proses pengembangan perangkat lunak itu sendiri.

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

## Tur Singkat

Tradisi pemrograman selalu dimulai dengan program pertama yang dapat mencetak kata-kata seperti _"Hello, World!_ pada laya. Dalam Swift, ini dapat dilakukan cukup dengan satu baris sederhana:

```swift
print("Hello, world!")
// Cetak "Hello, world!"
```

Jika anda pernah menulis kode dalam bahasa C atau Objective-C, sintaksis ini akan terlihat familiar bagi anda. Namun di dalam Swift, satu baris kode ini adalah satu program utuh. Anda tidak perlu melakukan _import_ _library_ lain untuk kemampuan masukan/keluaran untuk memproses tipe string. Kode yang telah ditulis pada cakupan global digunakan sebagai titik masuk dari program yang anda buat sehingga anda tidak membutuhkan sebuah fungsi `main()`. Anda juga tidak perlu menulis titik koma pada setiap kali mengakhiri pernyataan.

Perkenalan ini akan memberikan anda informasi dasar tentang bagaimana memulai menulis kode Swift dengan cara memperlihatkan anda bagaimana cara mencapai berbagai tugas-tugas lazim yang ada pada dunia pemrograman. Jangan kahwatir jika anda menemui sesuatu yang anda tidak pahami, segala hal yang diperkenalkan disini akan dijelaskan dengan detail pada bab berikutnya.

> **CATATAN**
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

> **EKSPERIMEN**
> Cobalah untuk menghilangkan fungsi untuk mengubah nilai menjadi `String` pada baris terakhir. _Error_ apakah yang anda dapatkan?

Sebuah nilai dapat pula disematkan pada `String` dengan cara yang lebih sederhana. Anda dapat menulis tanda kurung yang disertai dengan tanda garis miring terbalik sebelum tanda kurung pembuka. Contohnya:

```swift
let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."
```

> **EKSPERIMEN**
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

> **EKSPERIMEN**
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

> **EKSPERIMEN**
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

> **EKSPERIMEN**
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

### Fungsi dan Klosur

Anda dapat menggunakan sintaksis `func` untuk mendeklarasikan sebuah fungsi dalam Swift. Fungsi dapat dipanggil menggunakan namanya diikuti dengan argumen-argumennya yang dituliskan di dalam tanda kurung. Tanda panah `->` dapat digunakan untuk memisahkan nama-nama parameter dan tipe dari nilai yang dikembalikan fungsi tersebut.

```swift
func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}
greet(person: "Bob", day: "Tuesday")
```

> **EKSPERIMEN**
> Cobalah untuk menghapus parameter `day` dan tambahkan sebuah parameter yang dapat dibubuhkan nantinya didalam kalimat sapaan yang dikembalikan oleh fungsi `greet(person:day:)`.

### Obyek dan Kelas

Anda dapat menggunakan `class` yang diikuti oleh nama kelas tersebut untuk membuat suatu kelas. Pendeklarasian suatu properti di dalam kelas ditulis sama semerpti penulisan deklarasi konstan dan variabel hanya saja apabila ditulis di dalam kelas properti ini dipakai dalam konteks kelas tersebut. Begitu juga dengan deklarasi metode dan fungsi yang juga ditulis dengan cara yang sama.

```swift
class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}
```

> **EKSPERIMEN**
> Cobalah untuk menambahkan properti dengan sintaksis `let` dan tambahkan metode lain yang memerlukan sebuah argumen.

Membuat sebuah wujud dari suatu kelas adalah dengan cara membubuhkan tanda kurung setelah penulisan nama kelas yang bersangkutan. Anda dapat menggunakan sintaksis titik untuk mengakses properti-properti dan metode-metode yang dimiliki dari wujud tersebut.

```swift
var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()
```

Kelas `Shape` di atas masih belum memiliki sesuatu yang penting yang disebut konstruktor untuk menyiapkan kelas saat suatu instansi dibuat. Gunakanlah `init` untuk membuat sebuah konstruktor.

```swift
class NamedShape {
    var numberOfSides: Int = 0
    var name: String

    init(name: String) {
        self.name = name
    }

    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}
```

### Enumerasi dan Struktur

Anda dapat menggunakan `enum` untuk membuat sebuah enumerasi. Layaknya kelas dan tipe-tipe lain, enumerasi dapat memiliki metodenya sendiri.

```swift
enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king

    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}
let ace = Rank.ace
let aceRawValue = ace.rawValue
```

> **EKSPERIMEN**
> Cobalah untuk menulis sebuah fungsi yang membandingkan dua `Rank` dengan cara membandingkan nilai mentah (`rawValue`) mereka.

Pada dasarnya, Swift akan menentukan sendiri nilai mentah yang dimulai dari nol dan bertambah satu nial untuk kasus selanjutnya, namun anda dapat melakukan perubahan pada sifat ini dengan cara menuliskan secara eksplisit nilai yang dimaksudkan. Pada contoh di atas, `Ace` secara eksplisit diberikan nilai mentah `1`, dan nilai mentah sisanya akan diberikan nilai berdasarkan urutannya. Anda dapat juga menggunakan `string` atau bilangan-bilangan berkoma sebagai tipe dari nilai mentah pada sebuah enumerasi.

Gunakan konstruktor `init?(rawValue:)` untuk membuat sebuah wujud dari dari sebuah enumerasi dari sebuah nilai mentah. Inisialisasi ini akan mengembalikan kasus enumerasi yang sesuai dengan nilai mentah yang telah ditetapkan sebelumnya atau `nil` apabila tidak ditemukan kasus yang sesuai di dalam enumerasi `Rank` tersebut.

```swift
if let convertedRank = Rank(rawValue: 3) {
    let threeDescription = convertedRank.simpleDescription()
}
```

Nilai-nilai kasus dari sebuah enumerasi adalah nilai aktual dari kasus tersebut, tidak hanya cara lain penulisan nilai mentahnya. Anda tidak perlu menuliskan nilai mentah apabila anda dihadapkan dengan kasus-kasus dimana setiap kasus tidak memiliki nilai mentah yang bermakna tertentu.

```swift
enum Suit {
    case spades, hearts, diamonds, clubs

    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
}
let hearts = Suit.hearts
let heartsDescription = hearts.simpleDescription()
```

> **EKSPERIMEN**
> Cobalah untuk menambahkan metode `color()` pada enumerasi `Suit` yang mengembalikan nilai "black" dengan tipe `String` untuk `spade` dan `clubs` dan juga kembalikan "red" untuk kasus `hearts` dan `diamonds`.

Perhatikan bagaimana kasus `hearts` dari enumerasi di atas dirujuk. Ketika menentukan sebuah nilai untuk konstan `heatrs`, kasus enumerasi `Suit.hearts` dirujuk menggunakan nama yang lengkap. Ini dikarenakan konstan tidak memiliki tipe yang ditentukan secara eksplisit. Di dalam `switch`, kasus enumerasi dirujuk menggunakan bentuk yang disingkat (`.hearts`) karena nilai dari `self` telah diketahui tipenya sebagai `Suit`. Anda juga dapat menggunakan penyingkatan seperti ini kapanpun selama tipe dari suatu nilai telah diketahui secara implisit.

Apabila suatu enumerasi memiliki nilai-nilai mentah, maka nilai-nilai tersebut akan dianggap sebagai bagian dari deklarasi suatu enumerasi. Hal ini berarti untuk setiap wujud dari suatu kasus enumerasi tertentu akan selalu memeiliki nilai mentah yang sama. Cara lain untuk mendeklarasikan kasus-kasus pada enumerasi adalah dengan memiliki nilai-nilai yang dapat terasosiasi pada kasus yang bersangkutan. Anda dapat menganggap nilai-nilai yang terasosiasi bersifat sebagaimana suatu properti tersimpan dari suatu wujud kasus enumerasi. Contohnya, anda dapat melihat kasus dimana anda perlu mendapatkan informasi waktu terbit (_sunrise_) dan terbenamnya (_senset_) matahari dari suatu _server_. _Server_ tersebut akan merespon permintaan anda dengan memberikan informasi yang anda minta atau memberikan informasi tentang apa yang menjadi kesalahan dalam permintaan anda.

```swift
enum ServerResponse {
    case result(String, String)
    case failure(String)
}

let success = ServerResponse.result("6:00 am", "8:09 pm")
let failure = ServerResponse.failure("Out of cheese.")

switch success {
case let .result(sunrise, sunset):
    print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
case let .failure(message):
    print("Failure...  \(message)")
}
// Mencetak "Sunrise is at 6:00 am and sunset is at 8:09 pm."

```

> **EKSPERIMEN**
> Tambahkanlah kasus ketiga `ServerResponse` dan jangan lupa tambahkan juga pada pernyataan `switch`.

Perhatikan bagaimana waktu `sunrise` dan `sunset` diekstrak dari nilai `ServerResponse` sebagai bagian dari pencocokan nilai pada kasus-kasus `switch`.

Guneakan `struct` untuk membuat struktur. Struktur mendukung banyak sifat seperti yang dimiliki oleh kelas termasuk didalamnya metode dan konstruktor. Salah satu perbedaan terpenting antara kelas dan strukture adalah wujud dari sebuah struktur akan selalu disalin ketika digunakan pada kode anda, sedangkan pada kelas yang digunakan adalah nilai sebenarnya atau dengan bahasa lain adalah referensi nilai tersebut pada memori.

```swift
struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}
let threeOfSpades = Card(rank: .three, suit: .spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()
```

> **EKSPERIMEN**
> Tulislah sebuah fungsi yang mengembalikan nilai sebuah wujud `Array` yang mengandung satu dek kartu-kartu dengan setiap karetu memiliki properti `rank` dan `suit`.

### Protokol dan Ekstensi

Gunakan sintaksis `protokol` untuk mendeklarasikan sebuah protocol.

```swift
protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}
```

Kelas, enumerasi, dan _struct_ dapat mengadopsi protokol.

```swift
class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDescription += "  Now 100% adjusted."
    }
}
var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription

struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
}
var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription
```

> **EKSPERIMEN**
> Cobalah tambahkan syarat lain yang pada protokol `ExampleProtocol`. Perubahan apa yang anda butuhkan untuk membuat kedua kelas `SimpleClass` dan `SimpleStructure` agar tetap mengikuti aturan protokol `ExampleProtocol`?

Perhatikan penggunaan dari kata kunci `mutating` pada deklarasi `SimpleStrutcure` untuk menandai sebuah metode bahwa metode tersebut bersifat memodifikasi struktu. Deklarasi dari `SimpleClass` tidak memerlukan penulisan metode-metode didalamnya untuk ditandai dengan kata kunci `mutating` karena metode di dalam sebuah kelas dapat selalu memodifikasi kleas tersebut.

Gunakan `extension` untuk menambahkan fungsionalitas pada tipe yang sudah eksis, seperti metode baru atau properti yang bersifat `computed`. Anda dapat mengguanakn sebuah extensi untuk menambahkan penglarasan suatu tipe pada protokol tertentu yang telah dideklarasikan di tempat lain, atau bahkan untuk suatu tipe yang anda impor dari suatu pustaka atau kerangka kerja tertentu.

```swift
extension Int: ExampleProtocol {
    var simpleDescription: String {
        return "The number \(self)"
    }
    mutating func adjust() {
        self += 42
    }
}
print(7.simpleDescription)
// Mencetak "The number 7"
```

> **EKSPERIMEN**
> Buatlah ekstensi untuk tipe `Double` yang dapat menambahkan sebuah properti `absoluteValue`.

Anda dapat mengguanakan sebuah nama protokol sama seperti tipe yang telah ada yang lain. Contohnya untuk membuat sebuah koleksi dari obyek-obyek yang memiliki tipe yang berbeda-beda tetapi tetap selaras dengan suatu protokol yang sama. Ketika anda bekerja menggunakan nilai-nilai yang memiliki tipe berupa sebuah tipe protokol, metode-metode di luar definisi protokol tersebut tidak akan tersedia untuk dapat digunakan.

```swift
let protocolValue: ExampleProtocol = a
print(protocolValue.simpleDescription)
// Mencetak "A very simple class."
// print(protocolValue.anotherProperty)  // Hilangkan tanda `//` untuk melihat peringatan kesalahan
```

Walaupun variabel dari `protocolValue` sebenarnya memiliki tipe lain pada saat program dijalankan namun kompilator akan menganggap nilai ini sebagai tipe yang telah ditetapkan yaitu `ExampleProtocol`. Hal ini berarti bahwa anda tidak dapat mengakses metode atau properti yang diimplementasikan oleh kelas tersebut secara tidak sengaja selain yang selaras dengan protokolnya.

### Penanganan Kesalahan

Cara merepresentasikan kesalahan adalah dapat menggunakan tipe apapun selama tipe tersebut mengadopsi protokol `Error`.

```swift
enum PrinterError: Error {
    case outOfPaper
    case noToner
    case onFire
}
```

Anda dapat menggunakan `throw` untuk melempar suatu kesalahan dan `throws` untuk memmberikan tanda bahwa sebuah fungsi dapat melemparkan suatu kesalahan. Jika suatu saat anda melemparkan sebuah kesalahan di dalam sebuah fungsi, maka fungsi tersebut akan langsung kembali dan kode kode yang memanggil fungsi tersebut yang kemudian akan menangani kesalahan yang terjadi.

```swift
func send(job: Int, toPrinter printerName: String) throws -> String {
    if printerName == "Never Has Toner" {
        throw PrinterError.noToner
    }
    return "Job sent"
}
```

Ada banyak cara dalam pengananan kesalahan. Salah satu cara adalah dengan menggunakan sintaksis `do-catch`. Di dalam blok `do`, anda dapat menandai kode yang akan melempar kesalahan dengan cara membubuhkan `try` di depan pemanggilan fungsi tersebut. Kemudian di dalam blok `catch`, kesalahan tersebut akan secara otomatis dapat digunakan dengan nama "error" kecuali jika anda memberikan nama lain.

```swift
do {
    let printerResponse = try send(job: 1040, toPrinter: "Bi Sheng")
    print(printerResponse)
} catch {
    print(error)
}
// Mencetak "Job sent"
```

> **EKSPERIMEN**
> Gantilah nilai dari parameter `printerName` menjadi "Never Has Toner" sehingga fungsi `send(job:toPrinter:)` melemparkan sebuah kesalahan.

### Generik

Penulisan sebuah nama di dalam suatu tanda kurung sudut akan membuat suatu fungsi atau tipe menjadi generik.

```swift
func makeArray<Item>(repeating item: Item, numberOfTimes: Int) -> [Item] {
    var result = [Item]()
    for _ in 0..<numberOfTimes {
        result.append(item)
    }
    return result
}
makeArray(repeating: "knock", numberOfTimes: 4)
```

Anda dapat membuat generik dalam bentuk fungsi, metode, kelas, enumerasi, dan juga struktur.

```swift
// Implementasi ulang tipe opsional dari standar pustaka Swift
enum OptionalValue<Wrapped> {
    case none
    case some(Wrapped)
}
var possibleInteger: OptionalValue<Int> = .none
possibleInteger = .some(100)
```

Gunakan `where` tepat sebelum menulis isi dari fungsi untuk menjelaskan ketentuan-ketentuan yang diperlukan. Contohnya suatu ketentuan dimana suatu tipe harus mengimplementasikan sebuah protokol tertentu. Atau apabila anda ingin membuat suatu ketentuan dimana dua tipe harus sama, atau untuk membuat ketentuan dimana suatu kelase harus merupakan turunan dari kelas tertentu.

```swift
func anyCommonElements<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> Bool
    where T.Element: Equatable, T.Element == U.Element
{
    for lhsItem in lhs {
        for rhsItem in rhs {
            if lhsItem == rhsItem {
                return true
            }
        }
    }
    return false
}
anyCommonElements([1, 2, 3], [3])
```
