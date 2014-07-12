
# Include the code for reading the data file
source('dataloader.R')

# Load the data into memory if not already loaded
data <- data.load()

# Open the PNG graphics device
png('plot2.png', width=480, height=480)

# Plot away!
plot(data$Global_active_power, type='l', 
     ylab='Global Active Power (kilowatts)', xaxt='n', xlab='')
axis(1, at=c(0, nrow(data)/2, nrow(data)), labels=c('Thu', 'Fri', 'Sat'))

# Close the graphics device
dev.off()