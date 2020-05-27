#### Vectores en R #####
a <- c(1, 3, 2)

# Transpuesta de a
transpuesta <- t(a)

# Multiplicacion de un vector por un escalar
multiplicaciondeunvectorporescalar <- 7*a

# Suma de 2 vectores, como ya tenemos a no es necesario volver a ingresar este vector

b <- c(2,8,9)
sumadevectores <- a+b

# Producto interno de vectores
productointernodevectores <- sum(a*b)

# Norma de un vector
# raiz del producto del mismo vector.
normadeunvector <- sqrt(sum(a*a))

# Vector O (vector repite el numero 0, segun las veces que le indiquemos)
# Vector que contiene solo ceros.
vector0 <- rep(0,5)

# Vector 1 (vector repite el numero 1, segun las veces que le indiquemos)
# Vector que contien solo unos.
vector1 <- rep(1,5) 

# Vectores ortogonales (producto de vectores = 0)
v1 <- c(1,1)
v2 <- c(-1,1)
vectoresortogonales <- sum(v1*v2)

#### MATRICES ####
#Se leeran los numeros columna por columna
A <- matrix(c(1,3,2,2,8,9),ncol=3)

#Ejercicio de prueba, hacer la siguiente matriz:
#       4  0  5
# A1=  -3  8 -15
#      -15 0  6

A1 <- matrix(c(4,-3,-15,0,8,0,5,-15,6),ncol = 3)

#Si queremos leer los numeros de fila por fila debemos añadir el byrow=T
A2 <- matrix(c(1,3,2,2,8,9), ncol = 3, byrow = T)

# Multiplicacion de una matriz por un escalar
matrizporescalar <- 7*A

#Transpues de una matriz
transpuestadematrizA <-t(A)

#Suma de matrices
#Forma1, forma propia de crear la matriz B
#B <- matrix(c(5,8,3,4,2,7), ncol = 2)
#Forma2, forma segun el pdf de crear la matriz
B <- matrix(c(5,8,3,4,2,7), ncol = 3 , byrow = T)

sumadematricez <- A+B

# Multiplicacion de una matriz por vector
matrizvector <- A%*%a

# Multiplicacion de matriz por vector elemento fila por elemento columna
multiplicacionefporec <- A*a

# Multipliccion de matrices

AM <- matrix(c(1, 3, 2, 2, 8, 9), ncol = 2)
BM <- matrix(c(5, 8, 4, 2), ncol = 2)
multiplicaciondematrices <- AM %*% BM
 
 #MATRIZ CERO
matrizcero <- matrix(0, nrow = 2, ncol = 3)

# MATRIZ UNO
matrizuno <- matrix(1, nrow = 2, ncol = 3)

# MATRIZ DIAGONAL con diferentes elementos.
matrizdiagonal <- diag(c(1, 2, 3))

# Matriz con un mismo elemento en su diagonal
md <- diag(1, 3)

# DIAGONAL DE DIAGONAL

diag(diag(c(1, 2, 3)))

# DIAGONAL MATRIZ AM
diag(AM)

#INVERSA DE UNA MATRIZ

B2 <- matrix(c(1, 3, 2, 4), ncol = 2, byrow = T)

# INVERSA DE UNA MATRIZ SE UTILIZA SOLVE
BI <- solve(B2)

# MULTIPLICACION DE MATRICEZ
B2 %*% BI

# RESOLVIENDO SISTEMA DE ECUACIONES LINEALES

AEC <- matrix(c(1, 2, 3, 4), ncol = 2)
ECb <- c(7, 10)
x <- solve(AEC) %*% ECb
x


