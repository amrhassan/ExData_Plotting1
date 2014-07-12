
# Include the code for reading the data file
source('dataloader.R')

# Load the data into memory if not already loaded
data <- data.load()

# Open the PNG graphics device
png('plot3.png', width=480, height=480)

# Plot away!
plot(data$Sub_metering_1, type='n', xaxt='n', ylab='Energy sub metering', xlab='')
axis(1, labels=c('Thu', 'Fri', 'Sat'), at=c(0, nrow(data)/ 2, nrow(data)))
points(data$Sub_metering_1, col='black', type='l')
points(data$Sub_metering_2, col='red', type='l')
points(data$Sub_metering_3, col='blue', type='l')
legend('topright', legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       lwd=1, col=c('black', 'red', 'blue'))

# Close the graphics device
dev.off()