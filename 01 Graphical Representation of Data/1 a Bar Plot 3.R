# Bar Plot 3:

data = read.csv("moviesdata.csv")

movieNames = data$title

runtTime = data$runtime

barplot(runtTime[1:5], 
        main = "Movie Runtimes", 
        xlab = "Movie", 
        ylab = "Runtime",
        names.arg = movieNames[1:5], 
        ylim = c(0, 200), 
        col = rainbow((length(movieNames[1:5]))))