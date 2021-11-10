# Code for Plot 4         
source("./dataset.R")

# Creating and saving plot 4

png("Plot4.png", width = 480, height = 480, res = 72)

par(mfcol = c(2, 2)) # Creating the frame for the plots

        # Plot [1, 1]
plot(data$dttm, data$Global_active_power, type = "l", 
     xlab = "", ylab = "Global Active Power (kilowatts)")

        # Plot[2, 1]
plot(data$dttm, data$Sub_metering_1, type = "l", 
     xlab = "", ylab = "Energy sub metering")
lines(data$dttm, data$Sub_metering_2, type = "l", col = "red")
lines(data$dttm, data$Sub_metering_3, type = "l", col = "blue")
legend("topright",  
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty = 1, col=c("black", "red", "blue"), box.lty = 0, bg = "transparent")

        # Plot [1, 2]
plot(data$dttm, data$Voltage, xlab = "datetime", ylab = "Voltage", 
     type = "l", lwd = 0.001)

        # Plot [2, 2]
plot(data$dttm, data$Global_reactive_power, xlab = "datetime", 
     ylab = "Global_reactive_power", type = "l", lwd = 0.001)

        # Saving the plot as PNG
dev.off()
