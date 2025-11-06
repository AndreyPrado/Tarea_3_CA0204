
#mi tema favorito son los graficos
library(tidyverse)
diamonds %>%
  ggplot(aes(x = carat, y = price, color = cut)) +
  geom_point(alpha = 0.6) + 
  labs(
    title = "Relación entre el peso (carat) y el precio de los diamantes",
    subtitle = "Colores según la calidad del corte (cut)",
    x = "Peso del diamante (carat)",
    y = "Precio (USD)",
    color = "Calidad del corte"
  ) +
  theme_minimal()
