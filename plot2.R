#Code for reproducing Plot 2
setwd("~/R/data")

#Read data
hpc_data <- read.csv2("household_power_consumption.txt", na.strings = "?", stringsAsFactors = FALSE )
final_data <- subset(hpc_data, Date %in% c("1/2/2007","2/2/2007"))

#Convert Date and Time data to date/time formats
Date_Time <- strptime(paste(final_data$Date,final_data$Time), "%d/%m/%Y %H:%M:%S")

#Open PNG graphics device
png("plot2.png", width=480, height=480)
#Plot data
with(final_data, 
     plot(Date_Time, Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
)
#Close graphics device
dev.off()