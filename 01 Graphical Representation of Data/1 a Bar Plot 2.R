# Bar Plot 2:

values = matrix(c(35, 89, 54, 23, 72, 43, 62, 54, 56), 
                nrow = 3, 
                ncol = 3, 
                byrow = TRUE)

months = c("March", "April", "May")

revs = c("Income", "Rent", "PF")

print(values)

barplot(values, 
        names.arg = months, 
        main = "Total revenue", 
        xlab = "Month", 
        ylab="Revenue", 
        col = rainbow(length(months)), 
        ylim = c(0, 300))

legend("topleft", 
        revs, 
        fill=rainbow(length(months)))