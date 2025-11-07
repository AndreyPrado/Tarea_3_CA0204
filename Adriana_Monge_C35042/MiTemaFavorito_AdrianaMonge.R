
# MiTemaFavorito_AdrianaMonge.R
# Autor: Adriana Monge - C35042
# Tema: Mi gráfico favorito con ggplot2

library(ggplot2)

datos <- data.frame(
  x = 1:10,
  y = (1:10)^2
)

# Gráfico con ggplot2
ggplot(datos, aes(x = x, y = y)) +
  geom_line(color = "blue", linewidth = 1.2) +
  geom_point(color = "darkred", size = 3) +
  labs(
    title = "Mi gráfico favorito con ggplot2",
    subtitle = "Ejemplo para la Tarea 3 de CA0204",
    x = "Eje X",
    y = "Eje Y = x²"
  ) +
  theme_minimal()