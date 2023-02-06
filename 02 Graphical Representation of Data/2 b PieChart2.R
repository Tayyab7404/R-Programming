# Pie Chart 2:

x = c(21, 62, 10, 53)

labels = c("London", "New York", "Singapore", "Mumbai")

pie(x, 
    labels, 
    main="City pie chart", 
    col=rainbow(length(x)))