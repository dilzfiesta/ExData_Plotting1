# Read the file and subset only 2007-02-01 & 2007-02-02
getData <- function() {
    DF <- read.csv("data//household_power_consumption.txt", sep=";", na.strings="?")
    DF$Date <- as.Date(DF$Date, "%d/%m/%Y")
    DF$Datetime <- as.POSIXct(paste(DF$Date, DF$Time), format="%Y-%m-%d %H:%M:%S")
    DF <- subset.data.frame(DF, Date >= "2007-02-01" & Date <= "2007-02-02")
}