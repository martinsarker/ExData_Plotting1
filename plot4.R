source("loadTable.R")
source("plot3.R")
plot4 <- function(data = loadTable() , dims = c(480,480))
{

##	Set 2 rows and 2 columns
par(mfrow = c(2,2))

##	First plot
plot(data[,Time], data[,Global_active_power],
       main = "",
       xlab = "",
       ylab = "Global Active Power (kilowatts)",
	 type = "l",
	 col = "black"
	 )

##	Second plot
plot(data[,Time], data[,Voltage],
      main = "",
      xlab = "datetime",
	ylab = "Voltage",
	type = "l",
	col = "black"
	)

##	Third plot
plot3(legend_border="n", self = FALSE)				# Calls the function "plot3", because this would require lots of lines of code


##	Forth plot
plot(data[,Time], data[,Global_reactive_power],
	main = "",
	xlab = "datetime",
	ylab = "Global_reactive_power",
	type = "l",
	col = "black"
	)

dev.copy(png, file = "plot4.png", width = dims[1], height = dims[2])
dev.off()
}



	
