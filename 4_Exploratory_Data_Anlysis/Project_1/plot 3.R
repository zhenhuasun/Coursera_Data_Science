# Exploratory Data Analysis: Course Project 1: plot 3

## Loading the data
data <- read.table("./exdata-data-household_power_consumption/household_power_consumption.txt", header = TRUE, sep=";", na.strings = "?")
data <- subset(data, Date == "1/2/2007" | Date == "2/2/2007")

## Cleaning the data
data$Date_Time <- strptime(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S")
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
data$Time <- strptime(data$Time, "%H:%M:%S")
str(data)

## plot 3
png(file = "plot 3.png", width = 480, height = 480)
plot(data$Date_Time, data$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
points(data$Date_Time, data$Sub_metering_2, type = "l", xlab = "", ylab = "Energy sub metering", col = "red")
points(data$Date_Time, data$Sub_metering_3, type = "l", xlab = "", ylab = "Energy sub metering", col = "blue")
legend("topright", lwd = 1, col = c("black", "red", "blue"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()