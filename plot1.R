HouseHoldTable <- read.table("household_power_consumption.txt", sep=";",header=TRUE,nrows=10)
classes <- sapply(HouseHoldTable,class)
classes[1:2] <- 'character'
HouseHoldTable <- read.table(file = "household_power_consumption.txt", sep=";", header=TRUE, colClasses = classes, na.strings = '?')
TestTable <- subset(HouseHoldTable, as.Date(HouseHoldTable$Date, format = '%d/%m/%Y') >= as.Date('2007-02-01'))
TestTable <- subset(TestTable, as.Date(TestTable$Date, format = '%d/%m/%Y') <= as.Date('2007-02-02'))
png(filename ="plot1.png", width = 480, height = 480, units = "px")
hist(TestTable$Global_active_power, main="Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col="red")
dev.off()