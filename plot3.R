# Load data from file: household_power_consumption.txt
hpc <- read.table("household_power_consumption.txt",header=T,sep=";",na.strings="?")

#  Set format date
hpc$Date <- as.Date(hpc$Date,"%d/%m/%Y")

# Dates ranage
dates <- c("2007-02-01","2007-02-02")

# Date format conversion
dates <- as.Date(dates)

# Subsetting the data
hhpc <- subset(hpc,Date %in% dates)

# Code to adapt date and time
hhpc <- within(hhpc, Datetime <- strptime(paste(as.character(hhpc$Date), hhpc$Time), format="%Y-%m-%d %H:%M:%S"));

# Plot3

png(filename = "plot3.png",width = 480, height = 480, units = "px")
par(mfrow=c(1,1))
plot(hhpc$Datetime, hhpc$Sub_metering_1,type="l",xlab ="", ylab="Energy sub metering")
lines(hhpc$Datetime, hhpc$Sub_metering_2,col="red")
lines(hhpc$Datetime, hhpc$Sub_metering_3,col="blue")
legend("topright",legend = names(hhpc)[7:9],lty = 1, col=c("black","red","blue"))
dev.off()