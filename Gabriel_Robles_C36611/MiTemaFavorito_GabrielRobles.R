library(tidyverse)

df <- iris

df %>% 
  group_by(Species) %>% 
  ggplot(aes(y=Sepal.Width, x=Sepal.Width)) +
  geom_bar(stat = "identity", aes(fill = Species)) +
  labs( title = "Sepal width & length por especies")
