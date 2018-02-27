#Code for reproducing Plot 4
setwd("~/R/data")

#Read data
hpc_data <- read.csv2("household_power_consumption.txt", na.strings = "?", stringsAsFactors = FALSE )
final_data <- subset(hpc_data, Date %in% c("1/2/2007","2/2/2007"))

#Convert Date and Time data to date/time formats
Date_Time <- strptime(paste(final_data$Date,final_data$Time), "%d/%m/%Y %H:%M:%S")

#Open PNG graphics device
png("plot4.png", width=480, height=480)
#Plot data
with(final_data,plot(Date_Time, Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = ""))
points(Date_Time, final_data$Sub_metering_2, type = "l", col = "red")
points(Date_Time, final_data$Sub_metering_3, type = "l", col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
#Close graphics device
dev.off()