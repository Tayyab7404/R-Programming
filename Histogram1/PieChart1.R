# Pie Chart 1:

x = c(56, 34, 78)

marks = c("Maths", "Physics", "Chemistry")

colors = c("Red", "Green", "Blue")

percentage = round(100*x/sum(x), 1)

pie(x, 
    labels=percentage, 
    col = colors, 
    main = "TOtal marks")

legend("topleft",
       marks,
       fill = colors)