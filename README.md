# SharedPreferences-iOS
SharedPreferences ini bisa membantu anda untuk membuat penyimpanan sementara di iOS. Anda bisa memodifikasi kodenya dan disesuaikan dengan kebutuhan proyek anda. 

Untuk menggunakan SharedPreferences-iOS ini adalah sebagai berikut :
1. Tambahkan file <code>SharedPreferences.swift</code> ini ke proyek anda.
2. Untuk memanggil SharedPreferences ini silahkan buat deklarasi variabel sebagai berikut :
```swift
var sharedPref = SharedPreferences()
```
3. Untuk menggunakan sharedPref sebagai penyimpanan data anda adalah sebagai berikut :
```swift
sharedPref.setValue(key: "keyanda", val: "nilai yang akan disimpan")
```
4. Untuk memanggil data yang telah disimpan :
```swift
let data = sharedPref.getValue(key: "keyanda")
```
5. Untuk menghapus penyimpanan berdasarkan key :
```swift
sharedPref.removeKey(key: "keyanda")
```
5. Untuk menghapus semua data yang telah disimpan  :
```swift
sharedPref.clear()
```
Sekian tahapan untuk membuat penyimpanan sementara dengan SharedPreferences. 
untuk lebih jelasnya anda bisa lihat di blog saya https://blog.kamil.co.id
