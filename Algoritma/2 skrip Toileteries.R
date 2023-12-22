# ==============================================================================
# WORKSHOP MELEK DATA
# sebuah usaha membentuk insani berwawasan data dan berpikir kritis
# 
# skrip pembersih data
# data ATK
# dibuat oleh:
# ikanx101.com
# ==============================================================================


# ==============================================================================
setwd("~/melek-data/Algoritma")
rm(list=ls())
library(dplyr)
library(tidyr)
library(readxl)

# kita alihkan path nya ke folder raw data
setwd("~/melek-data/Raw/Toileteries")

# kita ambil semua sheet dalam file excelnya
toilet_sht = excel_sheets("DAFTAR ITEM TOILETRIS.xlsx")

# kita akan ambil tiga data terlebih dahulu
# kita ambil dua data penting
# data pertama
df_item_masuk  = read_excel("DAFTAR ITEM TOILETRIS.xlsx",
                            sheet = toilet_sht[2]) %>% janitor::clean_names()
# data kedua
df_item_keluar = read_excel("DAFTAR ITEM TOILETRIS.xlsx",
                            sheet = toilet_sht[3]) %>% janitor::clean_names()
# ==============================================================================


# ==============================================================================
# kita akan rapikan terlebih dahulu datanya
df_item_keluar = 
  df_item_keluar %>% 
  filter(jml_keluar > 0)

# kita simpan nama pemohon untuk kita ganti alias
user_pemohon_dbase = df_item_keluar$diterima_oleh %>% unique()
nama_alias         = 
  randomNames::randomNames(length(user_pemohon_dbase),which.names = "both",) %>% 
  unique()

# ini adalah referensi nama pemohon
referensi_nama = data.frame(user_pemohon = user_pemohon_dbase,
                            pemohon_nama = nama_alias)

# kita simpan nama departemen untuk kita ganti alias
dept_pemohon_dbase = df_item_keluar$dept_pemohon_bk %>% unique()
dept_pemohon_alias = paste0(substr(dept_pemohon_dbase,2,3),
                            substr(dept_pemohon_dbase,1,1)) |> toupper()

# ini adalah referensi departemen
referensi_dept = data.frame(dept_pemohon_bk = dept_pemohon_dbase,
                            pemohon_dept    = dept_pemohon_alias)

# kita gantikembali namanya
df_item_keluar = 
  df_item_keluar %>% 
  merge(referensi_nama,by = "user_pemohon") %>% 
  select(-user_pemohon) %>% 
  merge(referensi_dept,by = "dept_pemohon_bk") %>% 
  select(-dept_pemohon_bk,-diterima_oleh)
# ==============================================================================


# ==============================================================================
# kita save terlebih dahulu data itemnya terlebih dahulu
dbase_produk = 
  df_item_masuk %>% 
  select(kode_item,nama_item,satuan,penjual,harga_beli) %>% 
  distinct() %>% 
  arrange(kode_item) 

# kita ambil data item masuk
df_item_masuk = 
  df_item_masuk %>% 
  select(-input_oleh,-no_transaksi,-nama_item,
         -harga_beli,-total_beli,-bulan,-tahun) %>% 
  rename(dibeli_dari = penjual)

# kita ambil data item keluar
df_item_keluar = 
  df_item_keluar |>
  select(-input_oleh,-nama_item,-bulan,-tahun,
         -bukti_serah_terima,-no_transaksi)

# kita akan export kembali
setwd("~/melek-data/Clean")

openxlsx::write.xlsx(dbase_produk,
                     file = "dbase produk.xlsx")
openxlsx::write.xlsx(df_item_masuk,
                     file = "dbase pembelian produk.xlsx")
openxlsx::write.xlsx(df_item_keluar,
                     file = "dbase pemberian produk.xlsx")
# ==============================================================================
