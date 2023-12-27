# ==============================================================================
# WORKSHOP MELEK DATA
# sebuah usaha membentuk insani berwawasan data dan berpikir kritis
# 
# skrip pembersih data
# data toileteries
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
  filter(!is.na(jml_keluar))
# ==============================================================================


# ==============================================================================
# kita save terlebih dahulu data itemnya terlebih dahulu
dbase_produk = 
  df_item_masuk %>% 
  select(kode_item,nama_item,satuan,harga_beli) %>% 
  distinct() %>% 
  mutate(harga_beli = as.numeric(harga_beli)) |>
  group_by(kode_item,nama_item,satuan) |>
  summarise(harga_beli = mean(harga_beli,na.rm = T)) |>
  ungroup() |>
  arrange(kode_item) 

# kita ambil data item masuk
df_item_masuk = 
  df_item_masuk %>% 
  select(-input_oleh,-no_transaksi,-nama_item,
         -harga_beli,-total_beli,-penjual,-periode,-nomor_po)

# kita ambil data item keluar
df_item_keluar = 
  df_item_keluar |>
  select(-input_oleh,-nama_item,-keterangan,
         -no_transaksi,-periode)

# kita akan export kembali
setwd("~/melek-data/Clean/Toileteries")

openxlsx::write.xlsx(dbase_produk,
                     file = "dbase produk.xlsx")
openxlsx::write.xlsx(df_item_masuk,
                     file = "dbase pembelian produk.xlsx")
openxlsx::write.xlsx(df_item_keluar,
                     file = "dbase pemberian produk.xlsx")
# ==============================================================================
