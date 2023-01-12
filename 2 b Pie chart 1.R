runs = c(210,113,37,20)

batsmen = c("I Kishan",
            "V Kohli",
            "W Sundar",
            "Axar P")

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

png(file = "Pie Chart 1.jpeg")

pie(runs,
    batsmen,
    radius = 1,
    main = "Scorecard",
    col = rainbow(length(runs)),
    clockwise = TRUE)

dev.off() 