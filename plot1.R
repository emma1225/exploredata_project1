data<-read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")

electric<-data[data$Date %in% c("1/2/2007", "2/2/2007"),]

electric$Date<-strptime(paste(electric$Date,electric$Time), "%d/%m/%Y %H:%M:%S")

png(file="plot1.png",width=480,height=480)
with(electric,hist(Global_active_power,main="Global Active Power",col="red",xlab="Global Active Power (kilowatts)"))
dev.off()
