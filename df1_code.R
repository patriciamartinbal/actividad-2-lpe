# 21747742
# Patricia Martin Ballesteros

# Load DATASET 1 ----------------------------------------------------------
df1 <- read.csv(file="/Users/patrimballesteros/Desktop/act ii lpe datos/tipo_vivienda_ine_idealista.csv", 
                           sep=";",  header=TRUE,fileEncoding="latin1")
head(df1)
attach(df1)

# EDA ---------------------------------------------------------------------
# info dataset
str(df1)
nrow(df1)
ncol(df1)
colnames(df1)

# plotting
library(ggplot2)
ggplot(df1, aes(fill=tipo, y=Total, x=Periodo)) + 
labs(title = "% hogares por tipo de vivienda", caption = "Fuente: INE", x="", y="%") +
  geom_bar(position="stack", stat="identity") +
  theme(legend.position = "top") 
    

