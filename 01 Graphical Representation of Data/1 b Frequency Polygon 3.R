# Frequency Polygon 3:

data = read.csv("moviesdata.csv")

movieNames = data$title

runTime = data$runtime

plot(runTime[1:5], 
     col="red",
     main = "Movie Runtimes", 
     xlab = "Movie", 
     ylab="Runtime", 
     type="o")