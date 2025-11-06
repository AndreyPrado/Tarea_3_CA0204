# Mi tema favorito: Señales sencillas con ruido
# Autor: Sebastian Calderon
# Fecha: 2025-11-06

set.seed(123)
x <- seq(0, 2*pi, length.out = 200)
y <- sin(3*x) + rnorm(length(x), sd = 0.15)

# Guardar gráfico en archivo
png("grafico_mitema.png", width = 800, height = 500)
plot(x, y, type = "l", lwd = 2, col = "blue",
     main = "Señal senoidal con ruido",
     xlab = "x", ylab = "y")
grid()
dev.off()

cat("OK: gráfico generado en grafico_mitema.png\n")
