# Exploratory Data Analysis: Course Project 1: plot 2

## Loading the data
data <- read.table("./exdata-data-household_power_consumption/household_power_consumption.txt", header = TRUE, sep=";", na.strings = "?")
data <- subset(data, Date == "1/2/2007" | Date == "2/2/2007")

## Cleaning the data
data$Date_Time <- strptime(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S")
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
data$Time <- strptime(data$Time, "%H:%M:%S")
str(data)

## plot 2
png(file = "plot 2.png", width = 480, height = 480)
plot(data$Date_Time, data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()