# Code for Plot 3         
source("./dataset.R")

# Creating and saving plot 3

png("Plot3.png", width = 480, height = 480, res = 72)
plot(data$dttm, data$Sub_metering_1, type = "l", 
     xlab = "", ylab = "Energy sub metering")
lines(data$dttm, data$Sub_metering_2, type = "l", col = "red")
lines(data$dttm, data$Sub_metering_3, type = "l", col = "blue")
legend("topright",  
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty = 1, col=c("black", "red", "blue"))
dev.off()
