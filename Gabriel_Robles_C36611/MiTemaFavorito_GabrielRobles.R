library(tidyverse)

df <- iris

df %>% 
  group_by(Species) %>% 
  ggplot(aes(y=Species, x=Sepal.Width)) +
  geom_bar(stat = "identity", fill="steelblue") 
