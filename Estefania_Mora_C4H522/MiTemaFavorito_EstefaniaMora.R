library(dplyr)
library(ggplot2)

conteo.especies <- iris %>%
  group_by(Species) %>%
  summarise(Cantidad = n()) %>%  
  mutate(
    porcentaje = round(Cantidad / sum(Cantidad) * 100, 1),
    etiqueta = paste0(Species, " (", porcentaje, "%)")
  )

conteo.especies %>% 
  ggplot(aes(x = "", y = Cantidad, fill = Species)) +
  geom_bar(stat = "identity", width = 1, color = "white") +
  coord_polar("y", start = 0) +
  geom_text(aes(label = etiqueta),
            position = position_stack(vjust = 0.4),
            color = "white", size = 3) +
  scale_fill_brewer(palette = "Set2") +
  labs(
    title = "Distribución de especies en la base de datos iris",
    fill = "Especie"
  ) +
  theme_void()
