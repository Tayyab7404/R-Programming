library(plotrix)

runs <- c(210,113,37,20)

batsmen <- c("I Kishan",
             "V Kohli",
             "W Sundar",
             "Axar P")

png(file = "3D Pie Chart 1.jpg")

pie3D(runs,
      labels=batsmen,
      explode=0.1,
      main="3rd ODI Scorecard",
      col=rainbow(length(runs)))

dev.off()