
# Include the code for reading the data file
source('dataloader.R')

# Load the data into memory if not already loaded
data <- data.load()

# Open the PNG graphics device
png('plot4.png', width=480, height=480)

# Plot away!
par(mfrow=c(2,2))

# Plot No 1
plot(data$Global_active_power, type='l', 
     ylab='Global Active Power (kilowatts)', xlab='', xaxt='n')
axis(1, at=c(0, nrow(data)/2, nrow(data)), labels=c('Thu', 'Fri', 'Sat'))

# Plot No 2
plot(data$Voltage, type='l', xaxt='n', xlab='datetime', ylab='Voltage')
axis(1, at=c(0, nrow(data)/2, nrow(data)), labels=c('Thu', 'Fri', 'Sat'))

# Plot No 3
plot(data$Sub_metering_1, type='n', xaxt='n', ylab='Energy sub metering', xlab='')
axis(1, labels=c('Thu', 'Fri', 'Sat'), at=c(0, nrow(data)/ 2, nrow(data)))
points(data$Sub_metering_1, col='black', type='l')
points(data$Sub_metering_2, col='red', type='l')
points(data$Sub_metering_3, col='blue', type='l')
legend('topright', legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       lwd=1, col=c('black', 'red', 'blue'), bty='n')

# Plot No 4
plot(data$Global_reactive_power, xaxt='n', type='l', xlab='datetime')
axis(1, at=c(0, nrow(data)/2, nrow(data)), labels=c('Thu', 'Fri', 'Sat'))

# Close the graphics device
dev.off()
