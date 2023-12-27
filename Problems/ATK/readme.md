Masalah I: Strategi Alat Tulis Kantor
================

# Pendahuluan

## Latar Belakang

Salah satu tugas dari tim *office* adalah *supporting another
department* dalam hal kebutuhan sarana dan prasarana kerja, termasuk ke
dalam pemenuhan kebutuhan **alat tulis kantor**. Setiap harinya, *user*
di masing-masing departemen bisa melakukan *request* **alat tulis
kantor** menggunakan sistem IT yang ada. Setiap *request* tersebut
dicatat secara otomatis. Setelah itu, tim *office* **wajib memenuhi**
*request* tersebut dan menuliskan rekap pemberian (serah terima)
tersebut secara harian.

Data-data ini disimpan secara rapi namun belum pernah terutilisasi lebih
lanjut.

## Data yang Dimiliki

Pada *folder* ini kalian akan menemukan tiga buah *files* berformat
`.xlsx`, yakni:

### **Data I**: `dbase produk.xlsx`

`dbase produk.xlsx`, yakni *database* detail produk **alat tulis
kantor**. Struktur datanya sebagai berikut:

    ## tibble [301 × 5] (S3: tbl_df/tbl/data.frame)
    ##  $ kode_item   : chr [1:301] "ATKYHO001" "ATKYHO001" "ATKYHO001" "ATKYHO002" ...
    ##  $ nama_item   : chr [1:301] "AMPLOP A3 NFI COKLAT" "AMPLOP A3 NFI COKLAT" "AMPLOP A3 NFI COKLAT" "AMPLOP COKLAT A3" ...
    ##  $ satuan      : chr [1:301] "PACK" "PACK" "PACK" "PACK" ...
    ##  $ penjual     : chr [1:301] "SUSANTY PRINTING PROMOTION YANG, CV" "TATAWARNA MANDIRI, PT" "27TTWM - TATAWARNA MANDIRI, PT" "ARTHA STATIONERY, CV" ...
    ##  $ harga_satuan: num [1:301] 110000 170000 170000 75000 59000 ...

### **Data II**: `dbase pengeluaran produk.xlsx`

`dbase pengeluaran produk.xlsx`, yakni transaksi harian pemberian produk
**alat tulis kantor** yang dilakukan tim *office* kepada orang yang
meminta (*request*) di masing-masing departemen. Struktur datanya
sebagai berikut:

    ## tibble [2,697 × 6] (S3: tbl_df/tbl/data.frame)
    ##  $ tanggal     : POSIXct[1:2697], format: "2022-07-25" "2022-02-02" ...
    ##  $ kode_item   : chr [1:2697] "ATKYHO085" "ATKYHO164" "ATKYHO164" "ATKYHO127" ...
    ##  $ jml_keluar  : num [1:2697] 3 50 20 2 3 1 100 100 5 2 ...
    ##  $ satuan      : chr [1:2697] "RIM" "pcs" "pcs" "PACK" ...
    ##  $ pemohon_nama: chr [1:2697] "Arellano, Marysa" "Arellano, Marysa" "Arellano, Marysa" "Arellano, Marysa" ...
    ##  $ pemohon_dept: chr [1:2697] "LAA" "LAA" "LAA" "LAA" ...

### **Data III**: `dbase pembelian produk.xlsx`

`dbase pembelian produk.xlsx`, yakni transaksi harian pembelian produk
**alat tulis kantor** yang dilakukan tim *office* kepada *supplier*.
Struktur datanya sebagai berikut:

    ## tibble [501 × 6] (S3: tbl_df/tbl/data.frame)
    ##  $ tanggal    : POSIXct[1:501], format: "2021-01-18" "2021-01-18" ...
    ##  $ kode_item  : chr [1:501] "STOKYHO063" "ATKYHO106" "ATKYHO002" "ATKYHO006" ...
    ##  $ jml_masuk  : num [1:501] 14 2000 10 10 60 50 60 10 5 100 ...
    ##  $ satuan     : chr [1:501] "BOX" "PCS" "PACK" "PACK" ...
    ##  $ nomor_po   : chr [1:501] "160165" "161914" "161729" "161731" ...
    ##  $ dibeli_dari: chr [1:501] "Citra Satriawidya Andhika, PT" "POS INDONESIA, PT" "ARTHA STATIONERY, CV" "SIGMA BERKAT SEJATI, PT" ...

------------------------------------------------------------------------

# Masalah

## *Problem Statement*

Masalah yang dihadapi oleh tim *office* adalah:

- Jika semua produk overstok, maka gudang penyimpanan berpotensi penuh.
- Jika semua produk understok, maka *user* akan gelisah menunggu kapan
  *request*-nya bisa didapatkan.

Oleh karena itu, menggunakan data-data yang ada:

> Bantu tim *office* membuat strategi ***inbound - outbound***
> (pemenuhan stok) yang optimal!

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
