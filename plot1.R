temp = tempfile()
download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",temp)
data = read.csv(unz(temp,"household_power_consumption.txt"), header=TRUE, sep=";", stringsAsFactors=F)
feb = subset(data, as.Date(Date, "%d/%m/%Y") == "2007-02-01" | as.Date(Date, "%d/%m/%Y") == "2007-02-02" )
png("plot1.png", width = 480, height = 480, units = "px")
hist(as.numeric(feb$Global_active_power), main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = 'red')
dev.off()



