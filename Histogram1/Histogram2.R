# Histogram 2:

v <- c(9,13,21,8,36,22,12,41,31,33)

hist(v,
     xlab="Weight",
     col="blue",
     border="red", 
     main = "Weights Histogram",
     xlim = c(0,40), 
     ylim = c(0,5), 
     breaks = 5 )