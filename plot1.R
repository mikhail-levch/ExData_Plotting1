##Read data
download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",method = "curl",destfile = "ElPowCons.zip")
unzip("ElPowCons.zip")
data <- read.table("household_power_consumption.txt",header = TRUE,sep = ";",na.strings = "?")

##Subset and convert
data$Date <- as.Date(data$Date,"%d/%m/%Y")
data <- subset(data,(data$Date == "2007-02-01") | (data$Date == "2007-02-02"))
data$Time <- strptime(data$Time,"%H:%M:%S")
data$Date <- update(data$Date,hours = hour(data$Time),minutes = minute(data$Time),seconds = second(data$Time))
data <- data[,-2]
colnames(data)[1] <- "Date_Time"

##Plotting
par(mfrow = c(1, 1))
hist(data$Global_active_power,col = "red",xlab = "Global Active Power (kilowatts)",main = "Global Active Power")

##PNG file
dev.copy(png, file = "plot1.png")
dev.off()