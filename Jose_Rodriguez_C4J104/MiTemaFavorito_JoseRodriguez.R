# Mi tema favorio ha sido los data frames

df <- data.frame(
  "Nombre" = c("Juan", "Pedro", "Jose", "Anthony", "Julio", "María"),
  "Edad" = c(26,25,30,26,24,27),
  "Profesión" = c("Abogado", "Doctor", "Doctor", "Actuario", "Contador", "Veterinaria"),
  "Hijos" = c(F,F,T,T,F,T)
)

con.hijos <- df[df$Hijos == T,]
mayores.de.25 <- df[df$Edad > 25,]
vector.nombres <- c(df$Nombre)