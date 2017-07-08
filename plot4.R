par(mfrow = c(2, 2))
plot(x = data$Date_Time,y=data$Global_active_power,type = "n",xlab=NA,ylab = "Global Active Power (kilowatts)")
lines(x = data$Date_Time,y=data$Global_active_power)

plot(x = data$Date_Time,y=data$Voltage,type = "n",xlab="datetime",ylab = "Voltage")
lines(x = data$Date_Time,y=data$Voltage)

plot(x = data$Date_Time,y=data$Sub_metering_1,type = "n",xlab=NA,ylab = "Energy sub metering")
lines(x = data$Date_Time,y=data$Sub_metering_1)
lines(x = data$Date_Time,y=data$Sub_metering_2, col="red")
lines(x = data$Date_Time,y=data$Sub_metering_3, col="blue")
legend("topright", lty = 1, lwd=1, col = c("black","blue", "red"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))

plot(x = data$Date_Time,y=data$Global_reactive_power,type = "n",xlab="datetime",ylab = "Global_reactive_power")
lines(x = data$Date_Time,y=data$Global_reactive_power)
