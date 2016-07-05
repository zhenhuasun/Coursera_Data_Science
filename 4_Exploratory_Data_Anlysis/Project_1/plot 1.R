# Exploratory Data Analysis: Course Project 1: plot 1

## Loading the data
data <- read.table("./exdata-data-household_power_consumption/household_power_consumption.txt", header = TRUE, sep=";", na.strings = "?")
data <- subset(data, Date == "1/2/2007" | Date == "2/2/2007")

## Cleaning the data
data$Date_Time <- strptime(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S")
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
data$Time <- strptime(data$Time, "%H:%M:%S")
str(data)

## plot 1
png(file = "plot 1.png", width = 480, height = 480)
hist(data$Global_active_power, main = "Global Active Power", col = "red", xlab = "Global Active Power (kilowatts)", ylab = "Frequency")
dev.off()