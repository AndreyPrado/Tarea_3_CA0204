library(ggplot2)

dado <- 1:6

tiradas <- sample(dado, 10000, replace = TRUE)

datos <- data.frame(tiradas)

ggplot(datos, aes(x = tiradas)) +
  geom_bar() +
  labs(title = "Frecuencias de tiradas de un dado justo",
       x = "Cara del dado",
       y = "Frecuencia")