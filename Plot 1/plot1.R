# Load data
source("read_data.R")

# Open PNG device
png("plot1.png", width = 480, height = 480)

# Plot histogram
hist(subset_data$Global_active_power, col = "red",
     main = "Global Active Power", xlab = "Global Active Power (kilowatts)",
     breaks = 50)

# Close device
dev.off()
