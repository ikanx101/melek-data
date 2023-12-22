# ==============================================================================
# WORKSHOP MELEK DATA
# sebuah usaha membentuk insani berwawasan data dan berpikir kritis
# 
# skrip pembersih data
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
setwd("~/melek-data/Raw")

# kita ambil semua sheet dalam file excelnya
atk_sht = excel_sheets("DAFTAR ITEM ATK.xlsx")

# kita ambil tiga data penting
# data pertama
df_item_masuk  = read_excel("DAFTAR ITEM ATK.xlsx",
                            sheet = atk_sht[2]) %>% janitor::clean_names()
# data kedua
df_item_keluar = read_excel("DAFTAR ITEM ATK.xlsx",
                            sheet = atk_sht[3]) %>% janitor::clean_names()
# ==============================================================================


# ==============================================================================
# kita akan rapikan terlebih dahulu datanya
df_item_masuk =
  df_item_masuk %>% 
  filter(total_beli > 0) 

df_item_keluar = 
  df_item_keluar %>% 
  filter(jml_keluar > 0) %>% 
  filter(!is.na(user_pemohon))

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
                            substr(dept_pemohon_dbase,1,1))

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







