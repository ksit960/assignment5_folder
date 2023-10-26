make_table <- function(num = 100){
  x = c(0:100)
  normal_draws <- c()
  
  for (i in 1:length(x)){
    normal_draws[i] <- rnorm(1, 0, sqrt(0.001))
  }
  
  df <- data.frame(x = x, y = normal_draws)
  return (df)
}
table <- make_table()

write.csv(table, row.names=FALSE, "assignment5_file.csv")
