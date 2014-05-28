source("loadTable.R")
plot1 <- function(data = loadTable(), color = "red", nbreaks = 11, dims = c(480,480))
{
par(mfrow=c(1,1))
hist(as.numeric(as.character(data$Global_active_power)),
	col = color, breaks = nbreaks,
	xlab = "Global active power (kilowatts)",
	ylab ="Frequency", main = "Global active power" )

##	Saving the plot into a "png" file with selected dimensions (by default 480x480)
dev.copy(png, file = "plot1.png", width = dims[1], height = dims[2])
dev.off()
}



	