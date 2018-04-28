# Plot2

png(filename = "plot2.png",width = 480, height = 480, units = "px")
par(mfrow=c(1,1))
plot(hhpc$Datetime,hhpc$Global_active_power,type = "l", ylab = "Global Active Power (kilowatts)",xlab = "")
dev.off()