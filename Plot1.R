# Code for Plot 1         
source("./dataset.R")

# Creating and saving plot 1

#png("Plot1.png", width = 480, height = 480, res = 72)
hist(data$Global_active_power, col = "red", 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)")
#dev.off()