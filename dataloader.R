
# This script contains code for reading the data file and filtering out the unnecessary
# observations for our target plots.

# Loads and returns the data for the days 2007-02-01 and 2007-02-02.
data.load <- function() {
  file.url <- 'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'  
  file.path <- "data.zip"
  
  # Download the data file if it doesn't already exist
  if (!file.exists(file.path)) {
    download.file(file.url, file.path, method='curl')
  }
  
  # Read the data into memory
  data <- read.table(unz(file.path, 'household_power_consumption.txt'), sep=";", 
                     header=T, as.is=T, 
                     colClasses=c('character', 'character', rep('numeric', 7)),
                     na.strings=c('?'))
  
  # Subset to only the relevant days
  data <- data[data$Date=='1/2/2007' | data$Date=='2/2/2007',]
}