
# Include the code for reading the data file
source('dataloader.R')

# Load the data into memory if not already loaded
data <- data.load()

# Open the PNG graphics device
png('plot1.png', width=480, height=480)

# Plot away!
hist(data$Global_active_power, xlab='Global Active Power (kilowatts)', 
     main='Global Active Power', col='red')

# Close the graphics device
dev.off()