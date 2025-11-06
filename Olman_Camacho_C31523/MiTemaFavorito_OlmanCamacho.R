# ======
# Código 
# ======

vector.1 <- c(1:20)
numero.Random <- sample(vector.1, 1, replace = TRUE) 

if (numero.Random <= 10) {
  print("¡Hola Mundo!")
}

