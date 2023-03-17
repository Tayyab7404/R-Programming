# Bar Plot 1:

score = c(94, 69, 85, 79, 99)

names = c("Roshan", "Karthik", "Sufiyan", "Neeraj", "Tayyab")

barplot(score,  
        names.arg = names, 
        xlab = "Names", 
        ylab = "Score",  
        main = "Scores",
        ylim = c(0,100),
        col = rainbow(length(names)))
