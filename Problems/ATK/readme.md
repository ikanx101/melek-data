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

Pada *folder* ini kalian akan menemukan dua buah *files* berformat
`.xlsx`, yakni:

### **Data I**: `dbase pengeluaran produk.xlsx`

`dbase pengeluaran produk.xlsx`, yakni transaksi harian pemberian produk
**alat tulis kantor** yang dilakukan tim *office* kepada orang yang
meminta (*request*) di masing-masing departemen. Berikut adalah sampel
dari data yang ada:

| tanggal    | nama_item                     | kode_item  | jml_keluar | satuan | pemohon_nama    | pemohon_dept |
|:-----------|:------------------------------|:-----------|-----------:|:-------|:----------------|:-------------|
| 2022-07-25 | KERTAS A4 80GR                | ATKYHO085  |          3 | RIM    | Delgado, Sierra | LAA          |
| 2022-02-02 | Materai 10000                 | ATKYHO164  |         50 | pcs    | Delgado, Sierra | LAA          |
| 2021-06-14 | Materai 10000                 | ATKYHO164  |         20 | pcs    | Delgado, Sierra | LAA          |
| 2022-06-28 | POCKET BANTEX 2044            | ATKYHO127  |          2 | PACK   | Delgado, Sierra | LAA          |
| 2023-08-02 | BALLPOINT HITAM               | ATKYHO010  |          3 | PCS    | Delgado, Sierra | LAA          |
| 2023-05-26 | KERTAS F4 80GR PAPERONE       | ATKYHO089  |          1 | RIM    | Delgado, Sierra | LAA          |
| 2022-04-11 | Materai 10000                 | ATKYHO164  |        100 | pcs    | Delgado, Sierra | LAA          |
| 2021-12-08 | Materai 10000                 | ATKYHO164  |        100 | pcs    | Delgado, Sierra | LAA          |
| 2022-08-04 | KERTAS KOP SURAT NUTRIFOOD A4 | STOKYHO199 |          5 | RIM    | Delgado, Sierra | LAA          |
| 2022-05-18 | BALLPOINT HITAM               | ATKYHO010  |          2 | PCS    | Delgado, Sierra | LAA          |

Struktur datanya sebagai berikut:

    ## tibble [2,697 × 7] (S3: tbl_df/tbl/data.frame)
    ##  $ tanggal     : POSIXct[1:2697], format: "2022-07-25" "2022-02-02" ...
    ##  $ nama_item   : chr [1:2697] "KERTAS A4 80GR" "Materai 10000" "Materai 10000" "POCKET BANTEX 2044" ...
    ##  $ kode_item   : chr [1:2697] "ATKYHO085" "ATKYHO164" "ATKYHO164" "ATKYHO127" ...
    ##  $ jml_keluar  : num [1:2697] 3 50 20 2 3 1 100 100 5 2 ...
    ##  $ satuan      : chr [1:2697] "RIM" "pcs" "pcs" "PACK" ...
    ##  $ pemohon_nama: chr [1:2697] "Delgado, Sierra" "Delgado, Sierra" "Delgado, Sierra" "Delgado, Sierra" ...
    ##  $ pemohon_dept: chr [1:2697] "LAA" "LAA" "LAA" "LAA" ...

### **Data II**: `dbase pembelian produk.xlsx`

`dbase pembelian produk.xlsx`, yakni transaksi harian pembelian produk
**alat tulis kantor** yang dilakukan tim *office* kepada *supplier*.
Berikut adalah sampel datanya:

| tanggal    | nama_item                                    | kode_item  | jml_masuk | satuan | nomor_po | dibeli_dari                   | harga_beli | total_beli |
|:-----------|:---------------------------------------------|:-----------|----------:|:-------|:---------|:------------------------------|:-----------|-----------:|
| 2021-01-18 | CONTINUOUS FORM FAKTUR BISNIS 9.5”X11”,2 PLY | STOKYHO063 |        14 | BOX    | 160165   | Citra Satriawidya Andhika, PT | 285000     |    3990000 |
| 2021-01-18 | MATERAI 3000                                 | ATKYHO106  |      2000 | PCS    | 161914   | POS INDONESIA, PT             | 3000       |    6000000 |
| 2021-01-15 | AMPLOP COKLAT A3                             | ATKYHO002  |        10 | PACK   | 161729   | ARTHA STATIONERY, CV          | 75000      |     750000 |
| 2021-01-18 | AMPLOP PUTIH POLOS NO. 90                    | ATKYHO006  |        10 | PACK   | 161731   | SIGMA BERKAT SEJATI, PT       | 16250      |     162500 |
| 2021-01-18 | BALLPOINT HITAM                              | ATKYHO010  |        60 | PCS    | 161731   | SIGMA BERKAT SEJATI, PT       | 2100       |     126000 |
| 2021-01-15 | BINDER CLIP NO.107                           | ATKYHO020  |        50 | LUSIN  | 161729   | ARTHA STATIONERY, CV          | 2450       |     122500 |
| 2021-01-18 | CELLOTAPE 1/2X10 YDS PANFIX                  | ATKYHO037  |        60 | ROLL   | 161731   | SIGMA BERKAT SEJATI, PT       | 5250       |     315000 |
| 2021-01-18 | COVER BUFFALO                                | ATKYHO057  |        10 | PACK   | 161731   | SIGMA BERKAT SEJATI, PT       | 33600      |     336000 |
| 2021-01-18 | GUNTING KECIL                                | ATKYHO074  |         5 | PCS    | 161731   | SIGMA BERKAT SEJATI, PT       | 5513       |      27565 |
| 2021-01-18 | ISI STAPLES KECIL NO.10                      | ATKYHO080  |       100 | DUS    | 161731   | SIGMA BERKAT SEJATI, PT       | 1900       |     190000 |

Struktur datanya sebagai berikut:

    ## tibble [501 × 9] (S3: tbl_df/tbl/data.frame)
    ##  $ tanggal    : POSIXct[1:501], format: "2021-01-18" "2021-01-18" ...
    ##  $ nama_item  : chr [1:501] "CONTINUOUS FORM FAKTUR BISNIS 9.5\"X11\",2 PLY" "MATERAI 3000" "AMPLOP COKLAT A3" "AMPLOP PUTIH POLOS NO. 90" ...
    ##  $ kode_item  : chr [1:501] "STOKYHO063" "ATKYHO106" "ATKYHO002" "ATKYHO006" ...
    ##  $ jml_masuk  : num [1:501] 14 2000 10 10 60 50 60 10 5 100 ...
    ##  $ satuan     : chr [1:501] "BOX" "PCS" "PACK" "PACK" ...
    ##  $ nomor_po   : chr [1:501] "160165" "161914" "161729" "161731" ...
    ##  $ dibeli_dari: chr [1:501] "Citra Satriawidya Andhika, PT" "POS INDONESIA, PT" "ARTHA STATIONERY, CV" "SIGMA BERKAT SEJATI, PT" ...
    ##  $ harga_beli : chr [1:501] "285000" "3000" "75000" "16250" ...
    ##  $ total_beli : num [1:501] 3990000 6000000 750000 162500 126000 ...

------------------------------------------------------------------------

# Masalah

## *Problem Statement*

Masalah yang dihadapi oleh tim *office* adalah:

- Jika semua produk overstok, maka gudang penyimpanan berpotensi penuh
  atau ada kemungkinan barang tidak terpakai.
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
