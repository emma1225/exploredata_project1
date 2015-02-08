data<-read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")

electric<-data[data$Date %in% c("1/2/2007", "2/2/2007"),]

electric$Date<-strptime(paste(electric$Date,electric$Time), "%d/%m/%Y %H:%M:%S")

png(file="plot3.png",width=480,height=480)
with(electric,plot(Date,Sub_metering_1,main=" ",type="l",xlab=" ",ylab="Energy sub metering"))
with(electric,points(Date,Sub_metering_2,type="l",col="red"))
with(electric,points(Date,Sub_metering_3,type="l",col="blue"))
legend("topright",lty=1,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()
