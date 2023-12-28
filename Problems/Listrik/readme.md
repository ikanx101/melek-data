Masalah III: Strategi Produk Kelistrikan
================

# Pendahuluan

## Latar Belakang

Salah satu tugas dari tim *office* adalah *supporting another
department* dalam hal kebutuhan sarana dan prasarana kerja, termasuk ke
dalam pemenuhan kebutuhan yang terkait kelistrikan (lampu, kabel, dll.).
Pada periode tertentu, tim *office* akan membeli produk kelistrikan
untuk kemudian akan dipakai sesuai dengan kebutuhan yang ada di kantor.
Setiap transaksi masuk dan keluar yang ada dicatat secara otomatis oleh
sistem.

Data-data ini disimpan secara rapi namun belum pernah terutilisasi lebih
lanjut.

## Data yang Dimiliki

Pada *folder* ini kalian akan menemukan dua buah *files* berformat
`.xlsx`, yakni:

### **Data I**: `dbase pengeluaran produk.xlsx`

`dbase pengeluaran produk.xlsx`, yakni transaksi harian penggunaan
produk kelistrikan yang dilakukan tim *office* ke masing-masing
fasilitas kantor. Struktur datanya sebagai berikut:

    ## tibble [1,354 × 6] (S3: tbl_df/tbl/data.frame)
    ##  $ tanggal   : POSIXct[1:1354], format: "2021-01-06" "2021-01-08" ...
    ##  $ nama_item : chr [1:1354] "PIPA CONDUIT 20 MM" "CHECK VALVE KUNINGAN 1,5\"" "PIPA SOCK PVC POLOS 1,5 INCH" "PIPA SOCK DRAT LUAR 1.5 INCH" ...
    ##  $ kode_item : chr [1:1354] "STOKTEKNISI203" "STOKTEKNISI015" "STOKTEKNISI227" "STOKTEKNISI224" ...
    ##  $ jml_keluar: num [1:1354] 1 1 1 1 1 1 4 1 1 68 ...
    ##  $ satuan    : chr [1:1354] "BATANG" "PCS" "PCS" "PCS" ...
    ##  $ lokasi    : chr [1:1354] "Rawabali A3" "Area Luar Gedung" "Area Luar Gedung" "Area Luar Gedung" ...

### **Data II**: `dbase pembelian produk.xlsx`

`dbase pembelian produk.xlsx`, yakni transaksi pembelian produk
kelistrikan yang dilakukan tim *office* kepada *supplier*. Struktur
datanya sebagai berikut:

    ## tibble [412 × 9] (S3: tbl_df/tbl/data.frame)
    ##  $ tanggal     : POSIXct[1:412], format: "2021-01-05" "2021-01-04" ...
    ##  $ nama_item   : chr [1:412] "JET SHOWER CLOSET" "PIPA CONDUIT 20 MM" "FISCHER S10" "FISCHER S8" ...
    ##  $ kode_item   : chr [1:412] "STOKTEKNISI063" "STOKTEKNISI203" "STOKTEKNISI038" "STOKTEKNISI040" ...
    ##  $ jml_masuk   : num [1:412] 2 10 50 100 2 7 10 6 5 5 ...
    ##  $ satuan      : chr [1:412] "SET" "BATANG" "PCS" "PCS" ...
    ##  $ nomor_po    : chr [1:412] "0801/PAD/YHO/XII/2020" "0819/PAD/YHO/XII/2020" "160457" "160457" ...
    ##  $ dibeli_dari : chr [1:412] "Mayoma" "Mayoma" "MAYOMA" "MAYOMA" ...
    ##  $ harga_satuan: chr [1:412] "98500" "18000" "1450" "830" ...
    ##  $ total_harga : num [1:412] 197000 180000 72500 83000 52000 ...

------------------------------------------------------------------------

# Masalah

## *Problem Statement*

Masalah yang dihadapi oleh tim *office* adalah:

- Jika semua produk overstok, maka gudang penyimpanan berpotensi penuh.
- Jika semua produk understok, maka *user* fasilitas kantor akan gelisah
  karena fasilitas tidak bisa berfungsi dengan maksimal.

Oleh karena itu, menggunakan data-data yang ada:

> Bantu tim *office* membuat strategi ***inbound - outbound***
> (pemenuhan stok produk kelistrikan) yang optimal!

Buat satu materi presentasi sederhana yang bisa menjelaskan ide dan
strategi tim Anda! Silakan gunakan *tools* pengolahan data sesuai dengan
preferensi tim Anda!

Catatan: data ini dirancang untuk bisa diselesaikan cukup dengan
`Ms. Excel`.

## *Discussion*

Apakah ada:

- Variabel dari data yang tidak digunakan dalam membuat strategi
  tersebut?
- Variabel yang belum ada pada data namun diperlukan dalam membuat
  strategi tersebut? Jika ada, sebutkan dan bahas dalam materi
  presentasi tim Anda!
- Asumsi yang tim Anda gunakan dalam membuat strategi tersebut?

------------------------------------------------------------------------
