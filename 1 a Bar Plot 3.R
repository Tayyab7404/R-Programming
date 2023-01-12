runs = c(3,210,113,3,8,37,20,3,3,0,0)

batsmen = c("S Dhawan",
            "I Kishan",
            "V Kohli",
            "S Iyer",
            "KL Rahul",
            "W Sundar",
            "Axar P",
            "S Thakur",
            "Kuldeep Y",
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

png(file = "Bar Plot 3.jpeg")

barplot(runs,
        xlab = "Batsmen",
        ylab = "Runs",
        names.arg = batsmen,
        main="Scorecard",
        col = rainbow(length((runs))))

dev.off()