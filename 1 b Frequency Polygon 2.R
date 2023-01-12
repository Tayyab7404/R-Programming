v <- c(7,12,28,3,41)
t <- c(14,7,6,19,3)

#png(file = "Line Chart 2.jpeg")

plot(v,
     type="o",
     col="red",
     xlab="Month",
     ylab="Rain fall",
     main="Rain fall chart",
     xlim = c(0,7),
     ylim=c(0,50))

lines(t,
      type="o",
      col="blue")

#dev.off()