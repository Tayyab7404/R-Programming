runs = c(27,7,9,24,73,19,0,2,0,9,2)

batsmen = c("Rohit S",
            "S Dhawan",
            "V Kohli",
            "S Iyer",
            "KL Rahul",
            "W Sundar",
            "Shabaz A",
            "S Thakur",
            "D Chahar",
            "M Siraj",
            "Kuldeep S")

colours = c("darkred",
            "red",
            "orange",
            "yellow",
            "darkgreen",
            "green",
            "deepskyblue",
            "darkblue",
            "blue",
            "purple",
            "violet")

#png(file = "BarPlot 1.jpeg")

barplot(runs,
        xlab = "Batsmen",
        ylab = "Runs",
        names.arg = batsmen,
        main="Scorecard",
        col = rainbow(length((runs))))

#dev.off()