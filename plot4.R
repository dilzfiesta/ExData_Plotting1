# Read data
source("getPlotData.R")
DF <- getData()

# Func for graph
getPlot4 <- function() {
  # Plot 1
  with(DF, plot(Datetime, Global_active_power, type="l", ylab="Global Active Power(kilowatts)", xlab=""))
  
  # Plot 2
  with(DF, plot(Datetime, Voltage, type="l", ylab="Voltage", xlab="datetime"))
  
  # Plot 3
  with(DF, plot(Datetime, Sub_metering_1, type="l", ylab="Energy sub metering", xlab=""))
  lines(DF$Datetime, DF$Sub_metering_2,type = "l",col="blue")
  lines(DF$Datetime, DF$Sub_metering_3,type = "l",col="red")
  legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black", "red", "blue"), lty=1, cex=0.8)
  
  # Plot 4
  with(DF, plot(Datetime, Global_reactive_power, type="l", ylab="Global reactive power", xlab="datetime"))
}

# Create plot and export to PNG
png(filename = "plot4.png", width = 480, height = 480, units = "px")

# Set the plot's size
par(mfrow = c(2,2))

# plot it
getPlot4()
dev.off()