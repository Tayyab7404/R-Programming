# Pie Chart 3:

data = read.csv("moviesdata.csv")

movieNames = data$title
runTime = data$runtime

pie(runTime[1:5], 
    labels=movieNames[1:5], 
    main="Movie Runtimes", 
    col = rainbow(length(runTime[1:5])))