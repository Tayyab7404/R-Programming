# Frequency Polygon 2:

v <- c(7,12,28,3,41)

t <- c(14,7,6,19,3)

city = c("Guntur","Vijayawada")

plot(v,
     type="o",
     col="black",
     xlab="Month",
     ylab="Rain fall",
     main="Rain fall chart")

lines(t, 
      type="o", 
      col="blue")

legend("topleft", 
       city, 
       fill=c("black", "blue"))