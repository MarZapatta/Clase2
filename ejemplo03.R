#### Estructura de decision IF ####
x <- runif(1,0,10)
if(x>5){
  y <- TRUE
}else {
  y <- FALSE
}

#en general
# if(cond1){
#   #bloque de codigo
# }else if (cond2){
#   #bloque de codigo
# }else {
#   #otro bloque de codigo
# }



#### estructura de repeticion: FOR #####
for(i in 1:5){
  print(i)
}

# #en general
# for(variable in ObjetoIterable){
#   #algo de codigo que depende de variable
# }

#### Paquetes / librerias #####
sessionInfo()

#para cargar el paquete extraDistr
library(extraDistr) #cargamos el paquete/libreria de extraDistr
help("extraDistr") #accedemos a la ayuda del paquete
library(help= "extraDistr") #mostramos toda la info que posee el paquete
help("BetaPrime") #accedemos a la ayuda de una funcion

#### definicion de funciones de usuario en R ####
# sintaxis
# NombreDeLaFuncion <- function(arg1,arg2, ...) {
#   #alguna funcionalidad
# }








