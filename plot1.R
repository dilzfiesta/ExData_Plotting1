# Read data
source("getPlotData.R")
DF <- getData()

# func for graph
getPlot1 <- function() {
  with(DF, hist(Global_active_power, col='red', xlab="Global Active Power (kilowatts)", main="Global Active Power"))
}

# Create plot and export to PNG
png(filename = "plot1.png", width = 480, height = 480, units = "px")
getPlot1()
dev.off()