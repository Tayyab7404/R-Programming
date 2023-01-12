library(plotrix)

runs = c(3,210,113,3,8,37,20,3,3,0,0)

batsmen = c("Dhawan",
            "Kishan",
            "Kohli",
            "Iyer",
            "Rahul",
            "Sundar",
            "Axar",
            "Thakur",
            "Kuldeep",
            "Siraj",
            "Malik")

#png(file = "3D Pie Chart 1.jpeg")

pie3D(runs,
      labels=batsmen,
      main="3rd ODI Scorecard",
      col=rainbow(length(runs)))

#dev.off()