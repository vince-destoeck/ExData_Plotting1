data <- read.table("household_power_consumption.txt", sep= ";", header = TRUE, na.strings ="?")

data$Date_Time <- strptime(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")

sub2 <- subset(data, data$Date_time >= as.POSIXct("2007-02-01 00:00:00")& data$Date_time < as.POSIXct("2007-02-03 00:00:00"))

plot(sub2$Date_Time, sub2$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
