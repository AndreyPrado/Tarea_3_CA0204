

library(datasets)
library(ggplot2)


#Mi tema favorito son los carros

df <- cars

ggplot(df, aes(x = speed, y = dist)) +
  geom_line(color = 4,   
            lwd = 1,    
            linetype = 1) +
geom_point()