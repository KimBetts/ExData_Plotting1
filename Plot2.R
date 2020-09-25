## Plot 2

library(dplyr)

setwd("C:/Users/Kim/Dropbox/Soudi Coursera/course 4/Week 1 assingment")
data <- read.table("household_power_consumption.txt",header=TRUE, sep = ";")
data<-data[which(data$Date=="1/2/2007" | data$Date=="2/2/2007"),]
data$Global_active_power <- as.numeric(data$Global_active_power)
data$date.time<-strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
plot(data$date.time, data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)" )
