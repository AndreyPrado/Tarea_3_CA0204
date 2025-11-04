datos <- data.frame(
  mes = c("Ene", "Feb", "Mar", "Abr"),
  ventas = c(100, 150, 200, 180)
)

# Gráfico de barras simple
barplot(datos$ventas, 
        names.arg = datos$mes,
        col = "skyblue",
        main = "Ventas por Mes",
        xlab = "Meses",
        ylab = "Ventas")

#Mi tema favorito ha sido el trabajar con dataframes y el averiguar como graficar