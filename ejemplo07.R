rm(list = ls())  #para borrar los datos del environment
setwd("E:/Escritorio/Clase2")
dir()

#### cargamos la data: RetailSales.csv.txt #####
retail <- read.csv(file = "RetailSales.csv.txt")

#### alguna informacion del DF ####
class(retail)
str(retail)
colnames(retail)
View(retail)

#### limpieza de datos ####
#notamos que existen filas que poseen elementos vacios asi como elementos
#de tipo NA
#vamos actualizar la variable
help("na.omit")
retail <- na.omit(retail)
#na.omit elimina todas las filas que por lo menos tengan un elemento 
#de tipo NA

str(retail)

#### retail:analisis por año ####

