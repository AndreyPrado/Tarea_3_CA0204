data("mtcars") #Aca decidi tomar la base de datos que trae R integrada mtcars

mtcars$marca <- sapply(strsplit(rownames(mtcars), " "), `[`, 1) #Ahora obtenemos las marcas con respecto a los modelos de los coches

promedio_marca <- aggregate(hp ~ marca, data = mtcars, FUN = mean) #Ahora calculamos los caballos de fuerza promedio, registrado como hp en cada uno de las marcas denotadas. 

promedio_marca <- promedio_marca[order(promedio_marca$hp, decreasing = TRUE), ] #Le damos orden ascendente 

barplot( #Realizamos un grafico de barras
  promedio_marca$hp,
  names.arg = promedio_marca$marca,
  col = "green",
  main = "Caballos de fuerza promedio por marca",
  ylab = "Caballos de fuerza promedio",
  xlab = "Marca",
  las = 2 # ponemos los nombres en vertical
)