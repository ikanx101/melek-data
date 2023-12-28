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
setwd("~/melek-data/Raw Data/Algoritma Cleaning")
rm(list=ls())
library(dplyr)
library(tidyr)
library(readxl)

# kita alihkan path nya ke folder raw data
setwd("~/melek-data/Raw Data/Toileteries")

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
# kita ambil data item masuk
df_item_masuk = 
  df_item_masuk %>% 
  select(-input_oleh,-no_transaksi,-periode,-nomor_po)

# kita ambil data item keluar
df_item_keluar = 
  df_item_keluar |>
  select(-input_oleh,-keterangan,
         -no_transaksi,-periode)

# kita akan export kembali
setwd("~/melek-data/Problems/Toileteries")

openxlsx::write.xlsx(df_item_masuk,
                     file = "dbase pembelian produk.xlsx")
openxlsx::write.xlsx(df_item_keluar,
                     file = "dbase pemberian produk.xlsx")
# ==============================================================================
