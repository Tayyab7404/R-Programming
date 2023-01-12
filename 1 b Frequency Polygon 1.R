runs = c(3,210,113,3,8,37,20,3,3,0,0)

#png(file = "Line Chart 1.jpeg")

plot(runs,
     type="o",
     xlab = "Batsmen",
     ylab = "Runs",
     xlim = c(0,11),
     ylim = c(0,250),
     main="Scorecard",
     col=rainbow(length(runs)))

#dev.off()