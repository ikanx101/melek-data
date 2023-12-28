Masalah II: Strategi Produk Toileteries
================

# Pendahuluan

## Latar Belakang

Salah satu tugas dari tim *office* adalah *supporting another
department* dalam hal kebutuhan sarana dan prasarana kerja, termasuk ke
dalam pemenuhan kebutuhan ***toileteries*** (perlengkapan toilet). Pada
periode tertentu, tim *office* akan membeli perlengkapan toilet kemudian
didistribusikan oleh tim *cleaning service*. Setiap transaksi masuk dan
keluar yang ada dicatat secara otomatis oleh sistem.

Data-data ini disimpan secara rapi namun belum pernah terutilisasi lebih
lanjut.

## Data yang Dimiliki

Pada *folder* ini kalian akan menemukan dua buah *files* berformat
`.xlsx`, yakni:

### **Data I**: `dbase pengeluaran produk.xlsx`

`dbase pengeluaran produk.xlsx`, yakni transaksi harian distribusi
***toileteries*** yang dilakukan tim *customer service* ke masing-masing
fasilitas toilet. Struktur datanya sebagai berikut:

    ## tibble [2,081 × 7] (S3: tbl_df/tbl/data.frame)
    ##  $ tanggal   : POSIXct[1:2081], format: "2021-01-27" "2021-05-05" ...
    ##  $ nama_item : chr [1:2081] "TISSUE TOILET" "TISSUE TOILET" "TISSUE TOILET" "TISSUE TOILET" ...
    ##  $ satuan    : chr [1:2081] "ROLL" "ROLL" "ROLL" "ROLL" ...
    ##  $ kode_item : chr [1:2081] "CSYHO001" "CSYHO001" "CSYHO001" "CSYHO001" ...
    ##  $ jml_keluar: num [1:2081] 150 100 100 100 100 100 100 100 100 100 ...
    ##  $ lokasi    : chr [1:2081] "Rawabali A1" "Rawabali A1" "Rawabali A1" "Rawabali A1" ...
    ##  $ ruangan   : chr [1:2081] "AREA FASUM LAIN" "TOILET WANITA" "TOILET PRIA" "TOILET WANITA" ...

### **Data II**: `dbase pembelian produk.xlsx`

`dbase pembelian produk.xlsx`, yakni transaksi pembelian
***toileteries*** yang dilakukan tim *office* kepada *supplier*.
Struktur datanya sebagai berikut:

    ## tibble [100 × 8] (S3: tbl_df/tbl/data.frame)
    ##  $ tanggal   : POSIXct[1:100], format: "2021-01-27" "2021-01-28" ...
    ##  $ nama_item : chr [1:100] "ALKOHOL" "HAND SANITIZER" "HANDSOAP" "ALKOHOL" ...
    ##  $ satuan    : chr [1:100] "LITER" "LITER" "GALON" "LITER" ...
    ##  $ kode_item : chr [1:100] "CSYHO008" "CSYHO009" "CSYHO004" "CSYHO008" ...
    ##  $ jml_masuk : num [1:100] 50 50 10 35 100 30 60 25 30 10 ...
    ##  $ penjual   : chr [1:100] "Stock Larutan" "Mitra Jaya" "0" "0" ...
    ##  $ harga_beli: chr [1:100] "0" "297000" "117000" "0" ...
    ##  $ total_beli: num [1:100] 0 14850000 1170000 0 27000000 ...

------------------------------------------------------------------------

# Masalah

## *Problem Statement*

Masalah yang dihadapi oleh tim *office* adalah:

- Jika semua produk overstok, maka gudang penyimpanan berpotensi penuh.
- Jika semua produk understok, maka *user* fasilitas toilet akan gelisah
  karena perlengkapannya habis.

Oleh karena itu, menggunakan data-data yang ada:

> Bantu tim *office* membuat strategi ***inbound - outbound***
> (pemenuhan stok ***toileteries***) yang optimal!

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
