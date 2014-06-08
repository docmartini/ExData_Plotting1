## Plot 2

#Load Data
data <- read.table('./household_power_consumption.txt',header=TRUE,sep=";",na.strings="?")

# Data preparation
data <- subset(data, as.Date(Date,"%d/%m/%Y")==as.Date("01-02-2007","%d-%m-%Y") | as.Date(Date,"%d/%m/%Y")==as.Date("02-02-2007","%d-%m-%Y"))
data$dt <- strptime( paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")

# Plot output
png(file="plot2.png")
plot(data$dt, data$Global_active_power, ylab="GlobalActive Power (kilowats)",xlab="", type="l")
dev.off()