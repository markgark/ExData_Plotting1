# Plot1

png(filename = "plot1.png",width = 480, height = 480, units = "px")
par(mfrow=c(1,1))
hist(hhpc[,3],col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylim = range(0,1200))
dev.off()