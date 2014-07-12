
# This script contains code for reading the data file and filtering out the unnecessary
# observations for our target plots.

# Loads and returns the data for the days 2007-02-01 and 2007-02-02.
data.load <- function() {
  file.path <- "household_power_consumption.txt"
  
  data <- read.table(file.path, sep=";", header=T, as.is=T, 
                     colClasses=c('character', 'character', rep('numeric', 7)),
                     na.strings=c('?'))
  
  data <- data[data$Date=='1/2/2007' | data$Date=='2/2/2007',]
  
  # data$DateTime <- as.POSIXct(strptime(paste(data$Date, data$Time), '%d/%m/%Y %H:%M:%S'))
}