# Code for Plot 2         
source("./dataset.R")

# Creating and saving plot 2

png("Plot2.png", width = 480, height = 480, res = 72)
plot(data$dttm, data$Global_active_power, type = "l", 
     xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()
