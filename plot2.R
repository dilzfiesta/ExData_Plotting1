# Read data
source("getPlotData.R")
DF <- getData()

# func for graph
getPlot2 <- function() {
  DF$Datetime <- as.POSIXct(paste(DF$Date, DF$Time), format="%Y-%m-%d %H:%M:%S")
  with(DF, plot(Datetime, Global_active_power, type="l", ylab="Global Active Power(kilowatts)", xlab=""))
}

# Create plot and export to PNG
png(filename = "plot2.png", width = 480, height = 480, units = "px")
getPlot2()
dev.off()