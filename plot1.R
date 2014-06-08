## Plot 1

#Load Data
data <- read.table('./household_power_consumption.txt',header=TRUE,sep=";",na.strings="?")

# Data preparation
data <- subset(data, as.Date(Date,"%d/%m/%Y")==as.Date("01-02-2007","%d-%m-%Y") | as.Date(Date,"%d/%m/%Y")==as.Date("02-02-2007","%d-%m-%Y"))
data$dt <- strptime( paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")

# Plot output
png(file="plot1.png")
hist(data$Global_active_power, col="red", xlab="Global Active Power (kilowats)", ylab="Frequency", main="Global Active Power")
dev.off()