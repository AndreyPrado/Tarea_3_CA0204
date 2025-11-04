#Calcula la cantidad de términos de la serie armónica necesarios para que la suma sea mayor que el número puesto en el parámetro.  
harmonic.sum <- function(m) {
  sum = 0
  n = 0
  while (sum < m) {
    n = n + 1
    i = 1 / n
    sum = sum + i
  }
  return (n)
}

harmonic.sum(5)

