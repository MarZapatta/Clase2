rm(list = ls())
getwd()

class(AirPassengers)
library(help = "datasets")
help(ts) #es un objeto de bastante antiguedad en R
plot(AirPassengers)
class(CO2)
help(CO2)
class(CO2)
str(CO2)


data(cars)
data(CO2)

library(car)
data(Prestige)

str(Prestige)
head(Prestige)
tail(Prestige)


summary(Prestige) #da una caracteristica acerca de estas variables
levels(Prestige$type)
Prestige[is.na(Prestige$type), ]
help("Prestige")
#Analisis de la correlacion entre todas las varibles numericas
cor(Prestige[,-6])
help(cor)

library(corrplot)
corrplot(cor(Prestige[,-6]))

library(readxl)
library(help= "readxl")


