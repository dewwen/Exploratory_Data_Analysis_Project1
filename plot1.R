setwd("C:/Users/wdu/Downloads/exdata-data-household_power_consumption")
data <- read.table('household_power_consumption.txt',sep = ";",head = TRUE)
newdata <- data[data$Date %in% c(as.Date('2007-02-01'),as.Date('2007-02-02')),]
newdata$Global_active_power <- as.numeric(as.character(newdata$Global_active_power))
png("plot1.png",width=480,height=480)
hist(newdata1$Global_active_power, main='Global Active Power', xlab = 'Global Active Power(kilowatts)',col= 'red')
dev.off()