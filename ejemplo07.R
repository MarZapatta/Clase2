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
#veamos cuanto es lo que produjo de ventas por año
retail
retail[retail$Year==2000, ]
class(retail[retail$Year==2000, ])
retail[retail$Year==2000, ]$Sales
sum(retail[retail$Year==2000, ]$Sales)
unique(retail$Year)[1]
unique(retail$Year)[5:9]

#utilicemos una estructura for para crear un data frame donde
#almacenaremos un resumen por año

ResumenSales <- data.frame(Yea= integer(), VentaTotal= double())
NuevaFila <- data.frame()

for(y in unique(retail$Year)){
  NuevaFila <- data.frame(Year = y, VentaTotal= sum(retail[retail$Year==y, ]$Sales))
  ResumenSales <- rbind(ResumenSales , NuevaFila)
  }


plot(x= ResumenSales$Year, y=ResumenSales$VentaTotal)

#### Comportamiento de la data por mes ####
retail[retail$Month == "Jan", ]$Sales
unique(retail$Month)

for(m in retail$Month){
  print(retail[retail$Month == m, ])
}

for(m in retail$Month){
  print(m)
}

help("aggregate")
RetailMes <- aggregate(Sales ~ Month, data = retail, FUN = sum)
RetailMes

month.abb
month.name

RetailMes <- RetailMes[order(match(RetailMes$Month, month.abb)), ]













