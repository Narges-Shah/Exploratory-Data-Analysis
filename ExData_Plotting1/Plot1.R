#subsetting only firsr two days of February 2007 into file First2Month.csv
system("(head -1 household_power_consumption.txt ; grep '^[1|2]/2/2007' household_power_consumption.txt ) > First2Month.csv")

# Reading the data set
f2m <- read.csv("First2Month.csv", header=TRUE, sep=';', na.strings='?')

# Plotting the Data
png("plot1.png",width=480,height=480,units="px",bg="transparent")
message("Global Active Power Histogram")
hist(f2m$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency")

#Closing the Graphic Device
dev.off() 



