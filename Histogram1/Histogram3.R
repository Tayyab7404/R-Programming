# Histogram 3:

data = read.csv("moviesdata.csv")

movies = data$title
runTime = data$runtime

hist(runTime[1:200],
     xlab="Runtime",
     col=rainbow(length(runTime[1:6])),
     border="red", 
     xlim = c(0,200), 
     ylim = c(0,100), 
     main = "Movie Runtime Histogram")