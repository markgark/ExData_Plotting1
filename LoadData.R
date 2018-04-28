
# General coe to prepare data
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

# confirm column names
head(hhpc)

