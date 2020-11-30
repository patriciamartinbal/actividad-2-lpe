#DATASET 1
pacman::p_load(tm, SnowballC, tidyverse, wordcloud)
porc_viviendas_vacias_madrid <- read_csv("https://docs.google.com/spreadsheets/d/e/2PACX-1vRYnhvYjxFu8EHoNhXZ0atyd4b3LRlw1QXtAcQ2pdhsOs4Cea3L0DPsD-weOtix7ncrI8nL7PUR44bT/pub?gid=0&single=true&output=csv")
head(porc_viviendas_vacias_madrid)
