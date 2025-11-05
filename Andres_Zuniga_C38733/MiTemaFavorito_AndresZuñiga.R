# MiTemaFavorito_AndresZuniga.R
library(ggplot2)
set.seed(5)
x  <- rnorm(1000)
df <- data.frame(x)

p <- ggplot(df, aes(x = x)) +
  geom_histogram(aes(y = after_stat(density))) +
  geom_density()
print(p)
ggsave("grafico.png", plot = p, width = 8, height = 6, dpi = 150)


