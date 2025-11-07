die <- 1:6
roll <- function() {
  dice <- sample(die, 2, replace=TRUE)
  sum(dice)
}
roll()
