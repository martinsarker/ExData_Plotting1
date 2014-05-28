source("loadTable.R")
plot2 <- function(data = loadTable() , color = "black", dims = c(480,480))
{



plot(data[,Time], data[,Global_active_power],
	main = "",
	xlab = "",
	ylab = "Global Active Power (kilowatts)",
	type = "l",
	col = color
	)

dev.copy(png, file = "plot2.png", width = dims[1], height = dims[2])
dev.off()
}



	