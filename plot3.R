# Plot3

png(filename = "plot3.png",width = 480, height = 480, units = "px")
par(mfrow=c(1,1))
plot(hhpc$Datetime, hhpc$Sub_metering_1,type="l",xlab ="", ylab="Energy sub metering")
lines(hhpc$Datetime, hhpc$Sub_metering_2,col="red")
lines(hhpc$Datetime, hhpc$Sub_metering_3,col="blue")
legend("topright",legend = names(hhpc)[7:9],lty = 1, col=c("black","red","blue"))
dev.off()