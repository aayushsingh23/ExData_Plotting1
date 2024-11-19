# Load data
source("read_data.R")

# Open PNG device
png("plot2.png", width = 480, height = 480)

# Plot time series
plot(subset_data$Datetime, subset_data$Global_active_power, type = "l",
     xlab = "", ylab = "Global Active Power (kilowatts)")

# Close device
dev.off()
