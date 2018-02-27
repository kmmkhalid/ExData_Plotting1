#Code for reproducing Plot 1
setwd("~/R/data")

#Read data
hpc_data <- read.csv2("household_power_consumption.txt", na.strings = "?", stringsAsFactors = FALSE )
final_data <- subset(hpc_data, Date %in% c("1/2/2007","2/2/2007"))

#Open PNG graphics device
png("plot1.png", width=480, height=480)
#Plot data
hist(as.numeric(final_data$Global_active_power), 
        col = "red",
        main = "Global Active Power",
        xlab = "Global Active Power (in kilowatts)",
        ylab = "Frequency")
#Close graphics device
dev.off()


