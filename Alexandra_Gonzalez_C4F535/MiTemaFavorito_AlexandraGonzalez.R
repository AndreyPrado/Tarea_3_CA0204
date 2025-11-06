library(readxl)
library(ggplot2)

base.datos <- read_excel("letterboxd_data.xlsx")

ggplot(base.datos, aes(x = rating))+
  geom_bar(color= "white", fill = "pink")+
  labs(x = "Calificación", y = "Cantidad", 
       title = "Distribución de las calificaciones en Letterboxd")+
  theme_minimal()+
  theme(plot.title = element_text(hjust = 0.5),
        axis.title.x = element_text(margin = margin(t = 15)),
        axis.title.y = element_text(margin = margin(r = 15)))+
  scale_y_continuous(breaks = seq(1, 20, 1))+
  #scale_x_continuous(breaks = seq(0, 5, 0.1))+
  geom_text(stat = "count", aes(label = after_stat(count)), 
            vjust = 1, color = "deeppink", size = 3, fontface = "bold")