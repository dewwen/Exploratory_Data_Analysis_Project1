setwd("C:/Users/wdu/Downloads/exdata-data-household_power_consumption")
data <- read.table('household_power_consumption.txt',sep = ";",head = TRUE)
newdata <- data[data$Date %in% c(as.Date('2007-02-01'),as.Date('2007-02-02')),]
plot3data <- newdata[,c(1,2,7,8,9)]
plot3data$Data_Time = paste(plot3data$Date,plot3data$Time,sep=' ')
plot3data$Data_Time <- strptime(plot3data$Data_Time,format='%Y-%m-%d %H:%M:%S')
plot3data$Sub_metering_1 <- as.numeric(as.character(plot3data$Sub_metering_1))
plot3data$Sub_metering_2 <- as.numeric(as.character(plot3data$Sub_metering_2))
plot3data$Sub_metering_3 <- as.numeric(as.character(plot3data$Sub_metering_3))
png("plot3.png",width=480,height=480)
plot(plot3data$Data_Time,plot3data$Sub_metering_1,type='l',xlab='',ylab='Energy sub metering')
points(plot3data$Data_Time,plot3data$Sub_metering_2,type = 'l',col='red')
points(plot3data$Data_Time,plot3data$Sub_metering_3,type = 'l',col='blue')
legend('topright',legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col = c("black","red","blue"),lty = 1)
dev.off()