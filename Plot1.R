## Code to import data and make graph 1


library(dplyr)

setwd("C:/Users/Kim/Dropbox/Soudi Coursera/course 4/Week 1 assingment")
data <- read.table("household_power_consumption.txt",header=TRUE, sep = ";")
data<-data[which(data$Date=="1/2/2007" | data$Date=="2/2/2007"),]



data$Global_active_power <- as.numeric(data$Global_active_power)

hist(data$Global_active_power ,col = "red", main="Global Active Power",
     xlab = "Global Active Power (kilowatts)")











