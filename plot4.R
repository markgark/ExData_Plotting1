# Plot4

png(filename = "plot4.png",width = 480, height = 480, units = "px")
par(mfrow=c(2,2))

plot(hhpc$Datetime,hhpc$Global_active_power,type = "l",cylab = "Global Active Power (kilowatts)",xlab = "")
plot(hhpc$Datetime,hhpc$Voltage,type = "l",cylab = "Voltage",xlab = "datetime")

plot(hhpc$Datetime, hhpc$Sub_metering_1,type="l",ylab="Energy sub metering",xlab="")
lines(hhpc$Datetime, hhpc$Sub_metering_2,col="red")
lines(hhpc$Datetime, hhpc$Sub_metering_3,col="blue")
legend("topright",legend = names(hhpc)[7:9],lty = 1, col=c("black","red","blue"))

plot(hhpc$Datetime,hhpc$Global_reactive_power,type = "l", ylab = "Global_reactive_power",xlab = "datetime")

dev.off()