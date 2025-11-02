# Mi tema favorito son graficos 
library(tidyverse)

penguins %>% 
  ggplot(aes(x = species, fill = island)) +
  geom_bar(position = "fill")  + # hace que se vean como proporciones
  theme_minimal() +
  scale_fill_brewer(palette = "RdPu") +
  labs(
    title = "Distribución proporcional de islas por especie de pingüino",
    x = "Especie",
    y = "Proporción",
    fill = "Isla"
  )
