runs = c(3,210,113,3,8,37,20,3,3,0,0)

#png(file = "Histogram 1.jpeg")

hist(runs,
     xlab = "Batsmen",
     ylab = "Runs",
     main="Scorecard",
     xlim=c(0,400),
     ylim=c(0,10),
     breaks=2,
     col = rainbow(length((runs))))

#dev.off()