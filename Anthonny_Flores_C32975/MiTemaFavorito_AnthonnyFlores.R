cat("Vamos a apostar, vamos a jugar ruleta\n")
cat("Si no sabe jugar, busque en internet xd\n")

dinero <- 100
cat("El salgo inicial es de 100\n")
apuesta <- as.numeric(readline(prompt = "¿Cuanto quieres apostar? :)"))

if (apuesta > dinero || apuesta <= 0) {
  
} else {
  numero <- 0
  numero <- as.numeric(readline(prompt = "Elige un número del 0 al 36: "))
  
  if (numero < 0 || numero > 36) {
    cat("Buenas noches, hoy no se juega\n")
  } else {
    
    resultado <- sample(0:36, 1)
    cat("La ruleta giro y cayo en el número", resultado, "\n")
    
    if (numero == resultado) {
      ganancia <- apuesta * 35
      dinero <- dinero + ganancia
      cat("Felicidades Ganaste", ganancia, "colones, togi esta orgulloso de usted\n")
    } else {
      dinero <- dinero - apuesta
      cat("Perdiste", apuesta, "colones. Mejor suerte la proxima, sigue apostando todo.\n")
    }
  }
}
