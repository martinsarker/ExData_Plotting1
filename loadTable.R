library(data.table)										# Data will be saved into a data table, so the script requires librarry "data.table"
loadTable <- function(path = "data/household_power_consumption.txt")				# The only one argument is the path of the dataset
{
	print("Loading the data from the file. This may take a while ...")

##	Loading the data into a variable "data" of class "data.table"
data <- fread(path, na.strings = "?", sep = ";", skip = 66637, nrows = 2880, header = FALSE)	# Days of interest are just those selected rows
setnames(data,colnames(data),colnames(read.table(path, nrows = 1, header = TRUE, sep=";")))
	print("Loading complete. Converting times and dates ...")


##	Convert times and dates
data[,Time:= as.POSIXct( paste(Date, Time), format = "%d/%m/%Y %H:%M:%S")]
data[,Date:= as.Date(Date, format = "%d/%m/%Y")]


	print("Conversion complete. Data prepared")

return(data)
}