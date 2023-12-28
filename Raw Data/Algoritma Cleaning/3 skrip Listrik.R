# ==============================================================================
# WORKSHOP MELEK DATA
# sebuah usaha membentuk insani berwawasan data dan berpikir kritis
# 
# skrip pembersih data
# data listrik
# dibuat oleh:
# ikanx101.com
# ==============================================================================


# ==============================================================================
setwd("~/melek-data/Raw Data/Algoritma Cleaning")
rm(list=ls())
library(dplyr)
library(tidyr)
library(readxl)

# kita alihkan path nya ke folder raw data
setwd("~/melek-data/Raw Data/Listrik")

# kita ambil semua sheet dalam file excelnya
atk_sht = excel_sheets("DAFTAR ITEM TEKNISI.xlsx")

# kita ambil dua data penting
# data pertama
df_item_masuk  = read_excel("DAFTAR ITEM TEKNISI.xlsx",
                            sheet = atk_sht[4]) %>% janitor::clean_names()
# data kedua
df_item_keluar = read_excel("DAFTAR ITEM TEKNISI.xlsx",
                            sheet = atk_sht[3]) %>% janitor::clean_names()
# ==============================================================================


# ==============================================================================
# kita akan rapikan terlebih dahulu datanya
df_item_masuk =
  df_item_masuk %>% 
  filter(total_harga > 0) 

df_item_keluar = 
  df_item_keluar %>% 
  filter(jml_keluar > 0) 
# ==============================================================================


# ==============================================================================
# kita save terlebih dahulu data itemnya terlebih dahulu
# kita ambil data item masuk
df_item_masuk = 
  df_item_masuk %>% 
  select(-input_oleh,-no_transaksi,-tahun,
         -periode) %>% 
  rename(dibeli_dari = penjual)

# kita ambil data item keluar
df_item_keluar = 
  df_item_keluar |>
  select(-input_oleh,-tahun,-periode,
         -proyek,-no_transaksi)

# kita akan export kembali
setwd("~/melek-data/Problems/Listrik")

openxlsx::write.xlsx(df_item_masuk,
                     file = "dbase pembelian produk.xlsx")
openxlsx::write.xlsx(df_item_keluar,
                     file = "dbase pengeluaran produk.xlsx")
# ==============================================================================
