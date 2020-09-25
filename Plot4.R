##Plot4
library(dplyr)

setwd("C:/Users/Kim/Dropbox/Soudi Coursera/course 4/Week 1 assingment")
data <- read.table("household_power_consumption.txt",header=TRUE, sep = ";")
data<-data[which(data$Date=="1/2/2007" | data$Date=="2/2/2007"),]
data$Global_active_power <- as.numeric(data$Global_active_power)
data$date.time<-strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
data$Voltage <- as.numeric(data$Voltage)
for (i in 7:9){
  data[,i] <- as.numeric(data[,i])
}
data$Global_reactive_power <- as.numeric(data$Global_reactive_power)
par(mfrow = c(2, 2)) 

plot(data$date.time, data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power", cex=0.2 )
plot(data$date.time, data$Voltage, type="l", xlab="datetime", ylab="Voltage")
plot(data$date.time, data$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering" )
lines(data$date.time, data$Sub_metering_2, type = "l", col = "red")
lines(data$date.time, data$Sub_metering_3, type = "l", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"),bty = "o")
plot(data$date.time, data$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")