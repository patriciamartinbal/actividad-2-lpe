# 21747742
# Patricia Martin Ballesteros
# Load DATASET 3 ----------------------------------------------------------
df3 <- read.csv(file="/Users/patrimballesteros/Desktop/act ii lpe datos/datos-idealista-alquiler.csv", 
                sep=";",  header=TRUE)
head(df3)
attach(df3)

# EDA ---------------------------------------------------------------------
# info dataset
str(df3)
nrow(df3)
ncol(df3)
colnames(df3)


library(ggplot2)


ggplot(data=df3, aes(x = Localizacion, y = Precio.m2.nov.2020....m2.,color=Precio.m2.nov.2020....m2.))+
  geom_point() +
  scale_color_gradient(low = "green", high = "red") +
 
  labs(title = "Precio m2 nov 2020 (€/m2) en España", caption = "Fuente: INE", x=" ", y="")

variacion_anual = df3$Variacion.anual & 

