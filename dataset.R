# This code is for downloading, reading and subsetting the necessary data for 
# creating the plots

        # Downloading and reading the data
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
if(!file.exists("dataset.zip")) {
        download.file(url, "dataset.zip")
        unzip("dataset.zip")       
}
dataset <- read.table("./household_power_consumption.txt", 
                      header = TRUE, sep = ";")

        # Loading necessary packages
library(tidyverse)
library(lubridate)

        #Wrangling data
dataset <- dataset %>%
mutate(dttm = paste(Date, Time))
dataset$dttm <- dmy_hms(dataset$dttm)
dataset$Date <- dmy(dataset$Date)
dataset$Time <- hms(dataset$Time)
dataset$Global_active_power <- as.numeric(dataset$Global_active_power)
dataset$Global_reactive_power <- as.numeric(dataset$Global_reactive_power)
dataset$Voltage <- as.numeric(dataset$Voltage)
dataset$Global_intensity <- as.numeric(dataset$Global_intensity)
dataset$Sub_metering_1 <- as.numeric(dataset$Sub_metering_1)
dataset$Sub_metering_1 <- as.numeric(dataset$Sub_metering_1)
dataset$Sub_metering_1 <- as.numeric(dataset$Sub_metering_1)
dataset <- as_tibble(dataset) # Turning dataset into a tibble

        # Selecting needed dates
data1 <- subset(dataset, Date == "2007-02-01")
data2 <- subset(dataset, Date == "2007-02-02")
data <- rbind(data1, data2)
