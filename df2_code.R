# 21747742
# Patricia Martin Ballesteros
# Load DATASET 2 ----------------------------------------------------------
df2 <- read.csv(file="/Users/patrimballesteros/Desktop/act ii lpe datos/principal_secundaria_vacia.csv", 
                sep=";",  header=TRUE)
head(df2)
attach(df2)


# EDA ---------------------------------------------------------------------
# info dataset
str(df2)
nrow(df2)
ncol(df2)
colnames(df2)


library(ggplot2)

# piechart 2011 y 2001
nacional_2001 <- df2[df2$Lugar == "Nacional" & df2$Periodo == "2001",]
nacional_2011 <- df2[df2$Lugar == "Nacional" & df2$Periodo == "2011",]

# 2011
ggplot(nacional_2011, aes(x="", y=Total, fill=Tipo)) +
  geom_bar(stat="identity", width=1, color="white") +
  coord_polar("y", start=0) +
  labs(title = "Tipos de vivienda. Censo 2011", caption = "Fuente: INE")+
  
  theme_void()

# 2001
ggplot(nacional_2001, aes(x="" ,y=Total, fill=Tipo)) +
  geom_bar(stat="identity", width=1, color="white") +
  coord_polar("y", start=0) +
  labs(title = "Tipos de vivienda. Censo 2001", caption = "Fuente: INE")+
  theme_void()


#barplot tipo vivienda por periodo (2001 y 2011)
ggplot(data=df2[df2$Lugar == "Nacional",], aes(x=Tipo,y=Porcentaje,fill=factor(Periodo))) +
  geom_bar(position="dodge",stat="identity") + 
  geom_text(aes(label=Porcentaje), vjust=1.6, color="white",
   position = position_dodge(0.9), size=2.5)+
  ylim(0,100)+
  scale_fill_manual(values=c("hotpink4", "dodgerblue3"))+
  labs(title = "Comparación tipo vivienda en 2001 y 2011", caption = "Fuente: INE", x=" ", y="%")

#viviendas vacías Nacional-Barcelona-Madrid
ggplot(data=df2[df2$Tipo == "Vivienda vacia",], aes(x=Lugar,y=Total,fill=factor(Periodo))) +
  geom_bar(position="dodge",stat="identity") + 
  scale_fill_manual(values=c("hotpink4", "dodgerblue3"))+
  geom_text(aes(label=Total), vjust=1.6, color="white",
            position = position_dodge(0.9), size=2.5)+
  ylim(0,4000000)+
  labs(title = "Viviendas vacías. Nacional, Barcelona, Madrid.", caption = "Fuente: INE", x=" ", y="Nº Viviendas")

#viviendas secundarias Nacional-Barcelona-Madrid
ggplot(data=df2[df2$Tipo == "Vivienda secundaria",], aes(x=Lugar,y=Total,fill=factor(Periodo))) +
  geom_bar(position="dodge",stat="identity") + 
  scale_fill_manual(values=c("hotpink4", "dodgerblue3"))+
  geom_text(aes(label=Total), vjust=1.2, color="white",
            position = position_dodge(1), size=2.8)+
  ylim(0,4000000)+
  labs(title = "Viviendas secundarias. Nacional, Barcelona, Madrid.", caption = "Fuente: INE", x=" ", y="Nº Viviendas")
