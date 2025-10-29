#se utilizara un dataset de R para mayor facilidad

library(tidyverse)
Data <-penguins 

Data %>% 
  ggplot(aes(x=flipper_len, fill = species)) +
    geom_density(alpha=0.5) +
      theme_minimal() +
        labs( 
          title = "Distribucion tamaño ala por especie",
          y="densidad",
          x="tamaño ala"
            )
  

#Texto agregado para practicar agregar en git, Hola Asistente :D 