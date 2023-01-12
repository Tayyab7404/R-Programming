runs = c(5,8,82,11,14,56,7,11,51,2,0)

batsmen = c("V Kohli",
            "S Dhawan",
            "S Iyer",
            "W Sundar",
            "KL Rahul",
            "Axar P",
            "S Thakur",
            "D Chahar",
            "Rohit S",
            "M Siraj",
            "U Malik")

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

#png(file = "BarPlot 2.jpeg")

barplot(runs,
        xlab = "Batsmen",
        ylab = "Runs",
        names.arg = batsmen,
        main="Scorecard",
        col = rainbow(length((runs))))

#dev.off()