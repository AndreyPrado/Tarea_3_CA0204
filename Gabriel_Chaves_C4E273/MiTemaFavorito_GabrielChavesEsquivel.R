vector <- c(1,2,3,4)
matrizA <- matrix(vector, nrow = 2, ncol = 2)
matrizA

transponer_matriz <- function(matriz) {
  matrizT <- matrix(matriz, nrow = ncol(matriz), ncol = nrow(matriz), byrow = TRUE)
  matrizT
}

matriz_transpuesta <- transponer_matriz(matrizA)
matriz_transpuesta
