setwd("C:/Users/wdu/Downloads/exdata-data-household_power_consumption")
data <- read.table('household_power_consumption.txt',sep = ";",head = TRUE)
newdata <- data[data$Date %in% c(as.Date('2007-02-01'),as.Date('2007-02-02')),]
plot2data<-newdata[,c(1,2,3)]
plot2data$Data_Time = paste(plot2data$Date,plot2data$Time,sep=' ')
plot2data$Data_Time <- strptime(plot2data$Data_Time,format='%Y-%m-%d %H:%M:%S')
plot2data$Global_active_power <- as.numeric(as.character(plot2data$Global_active_power))
png("plot2.png",width=480,height=480)
plot(plot2data$Data_Time,plot2data$Global_active_power,type="l",xlab='',ylab='Global Active Power(kilowatts)')
dev.off()