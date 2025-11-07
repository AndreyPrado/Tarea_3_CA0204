##Curva de Bell
library(ggplot2)

#10,000 experimentos de lanzar 2 dados y sumar sus valores
tiradas <- 10000
resultados <- replicate(tiradas, sum(sample(1:6, 2, replace = TRUE)))

datos <- data.frame(suma = resultados)

#Grafico
ggplot(datos, aes(x = suma)) +
  geom_histogram(
    breaks = seq(1.5, 12.5, by = 1),
    fill = "lightblue", 
    color = "black",
    alpha = 0.8
  ) +
  labs(
    title = "Distribución de la Suma de 2 Dados",
    subtitle = "Simulación de 10,000 lanzamientos",
    x = "Suma de los dados",
    y = "Frecuencia"
  ) +
  scale_x_continuous(breaks = 2:12) +
  theme_minimal() +
  theme(
    plot.title = element_text(hjust = 0.5, face = "bold"),
    plot.subtitle = element_text(hjust = 0.5)
  )
