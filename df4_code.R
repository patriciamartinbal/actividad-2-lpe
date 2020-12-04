# 21747742
# Patricia Martin Ballesteros
# Load DATASET 4 ----------------------------------------------------------
df4 <- read.csv(file="/Users/patrimballesteros/Desktop/act ii lpe datos/pobreza.csv", 
                sep=";",  header=TRUE)
head(df4)
attach(df4)

# EDA ---------------------------------------------------------------------
# info dataset
str(df4)
nrow(df4)
ncol(df4)
colnames(df4)
df4=df4[-c(25:48),]

# plot
library(ggplot2)
ggplot(df4, aes(fill=Umbral.de.riesgo.de.pobreza, y=Total, x=Periodo)) + 
  geom_bar(position="dodge", stat="identity") +
  scale_fill_manual(values=c("hotpink4", "dodgerblue3"))+
  labs(title = "Hogares en riesgo de pobreza", caption = "Fuente: INE", x=" ", y="%") +
  scale_x_continuous(breaks = seq(2008, 2019, by = 1))
