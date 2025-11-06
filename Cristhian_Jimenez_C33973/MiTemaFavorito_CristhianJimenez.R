```{r}
candefinedlcular_nota <- function(presencial, virtual) {
  nota_final <- presencial * 0.6 + virtual * 0.4
  return(nota_final)
}


nota <- calcular_nota(50, 70)
cat(nota)
```