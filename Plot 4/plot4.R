# Load data
source("read_data.R")

# Open PNG device
png("plot4.png", width = 480, height = 480)

# Set up layout
par(mfrow = c(2, 2))

# Plot 1: Global Active Power
plot(subset_data$Datetime, subset_data$Global_active_power, type = "l",
     xlab = "", ylab = "Global Active Power")

# Plot 2: Voltage
plot(subset_data$Datetime, subset_data$Voltage, type = "l",
     xlab = "datetime", ylab = "Voltage")

# Plot 3: Energy Sub-Metering
plot(subset_data$Datetime, subset_data$Sub_metering_1, type = "l", col = "black",
     xlab = "", ylab = "Energy sub metering")
lines(subset_data$Datetime, subset_data$Sub_metering_2, col = "red")
lines(subset_data$Datetime, subset_data$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"), lty = 1, bty = "n")

# Plot 4: Global Reactive Power
plot(subset_data$Datetime, subset_data$Global_reactive_power, type = "l",
     xlab = "datetime", ylab = "Global Reactive Power")

# Close device
dev.off()
