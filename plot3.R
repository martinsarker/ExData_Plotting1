source("loadTable.R")
plot3 <- function(data = loadTable() , dims = c(480,480), legend_border="o", self = TRUE)
{
if (self == TRUE){ 										# if it's not called by other function (such as by plot4), set "self" to be TRUE
par(mfrow=c(1,1))
	}

plot(data[,Time], data[,Sub_metering_1],
	main = "",
      xlab = "",
      ylab = "Energy sub metering",
	type = "l",
	col = "black"
	)

lines(data[,Time], data[,Sub_metering_2],
      main = "",
      xlab = "",
	type = "l",
	col = "red"
	)

lines(data[,Time], data[,Sub_metering_3],
      main = "",
      xlab = "",
	type = "l",
	col = "blue"
	)

legend("topright",
	lty = c(1,1),
	legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
	col = c("black", "red", "blue"),
	bty = legend_border
	)
if (self == TRUE){
dev.copy(png, file = "plot3.png", width = dims[1], height = dims[2])
dev.off()
	}
}



	