## Plot 3

#Load Data
data <- read.table('./household_power_consumption.txt',header=TRUE,sep=";",na.strings="?")

# Data preparation
data <- subset(data, as.Date(Date,"%d/%m/%Y")==as.Date("01-02-2007","%d-%m-%Y") | as.Date(Date,"%d/%m/%Y")==as.Date("02-02-2007","%d-%m-%Y"))
data$dt <- strptime( paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")

# Plot output
png(file="plot3.png")
plot(data$dt, data$Sub_metering_1, ylab="Energy sub metering",xlab="", type="l")
lines(data$dt, data$Sub_metering_2, type="l", col="red")
lines(data$dt, data$Sub_metering_3, type="l", col="blue")
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=c(1,1,1), col=c("black","red","blue"))
dev.off()