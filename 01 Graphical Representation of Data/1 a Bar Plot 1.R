# Bar Plot 1:

score = c(94, 69, 85, 79, 99)

names = c("Roshan", "Karthik", "Sufiyan", "Neeraj", "Tayyab")

barplot(score, 
        xlab = "Names", 
        ylab = "Score", 
        ylim = c(0,100), 
        main = "Scores", 
        names.arg = names, 
        col = rainbow(length(names)))