vuelos_por_mes <- flights %>%
  group_by(month) %>%
  summarise(total_vuelos = n()) %>%
  mutate(
    mes = factor(
      month,
      levels = 1:12,
      labels = c(
        "Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio",
        "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre"
      )
    )
  )

ggplot(vuelos_por_mes, aes(x = mes, y = total_vuelos, group = 1)) +
  geom_line(color = "lightblue2", linewidth = 1) +
  geom_point(color = "blue", size = 2) +
  geom_text(
    aes(label = total_vuelos),
    vjust = -0.5,
    size = 3,
    color = "lightblue4"
  ) +
  labs(
    title = "Numero de vuelos por mes realizados en 2013 en Nueva York",
    x = "Mes",
    y = "# de vuelos"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(hjust = 0.5, face = "bold")
  )