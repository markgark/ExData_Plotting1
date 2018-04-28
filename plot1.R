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

# Plot1

png(filename = "plot1.png",width = 480, height = 480, units = "px")
par(mfrow=c(1,1))
hist(hhpc[,3],col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylim = range(0,1200))
dev.off()