data <- read.table("household_power_consumption.txt", sep= ";", header = TRUE, na.strings ="?")

data$Date_Time <- strptime(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")

sub2 <- subset(data, data$Date_time >= as.POSIXct("2007-02-01 00:00:00")& data$Date_time < as.POSIXct("2007-02-03 00:00:00"))

with(sub2, plot(Date_Time, Sub_metering_1, type="l", col="black", xlab=" ", ylab="Energy sub metering"))
with(sub2, lines(Date_Time, Sub_metering_2, type="l", col="red"))
with(sub2, lines(Date_Time, Sub_metering_3, type="l", col="blue"))
legend("topright", lwd=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_Metering_2", "Sub_Metering_3"))
