# Read data
source("getPlotData.R")
DF <- getData()

# Func for graph
getPlot3 <- function() {
  with(DF, plot(Datetime, Sub_metering_1, type="l", ylab="Energy sub metering", xlab=""))
  lines(DF$Datetime, DF$Sub_metering_2,type = "l",col="blue")
  lines(DF$Datetime, DF$Sub_metering_3,type = "l",col="red")
  legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black", "red", "blue"), lty=1, cex=0.8)
}

# Create plot and export to PNG
png(filename = "plot3.png", width = 480, height = 480, units = "px")
getPlot3()
dev.off()