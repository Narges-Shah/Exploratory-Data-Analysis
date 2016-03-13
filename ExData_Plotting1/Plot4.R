# Reading the data set
f2m <- read.csv("First2Month.csv", header=TRUE, sep=';', na.strings='?')

# Convert Date and Time variables
f2m$datetime <- strptime(paste(f2m$Date,f2m$Time), "%d/%m/%Y %H:%M")

# Plotting the Data
png("plot4.png",width=480,height=480,units="px",bg="transparent")

# 4 Plots in 2 rows and 2 columns
par(mfrow=c(2,2))

#First Plot top-left
plot(f2m$datetime, f2m$Global_active_power, xlab ="", ylab = "Global Active Power", type ="l")
message("Global Active Power Plot ( top left )")

#Second Plot top-right
plot(f2m$datetime, f2m$Voltage, xlab ="datetime", ylab = "Voltage", type ="l")
message("Voltage Plot ( top right )")

#Third Plot bottom-left
plot(f2m$datetime, f2m$Sub_metering_1, xlab ="", ylab = "Energy sub metering", type ="l", col = 'black')
lines(f2m$datetime, f2m$Sub_metering_2, col = "red")
lines(f2m$datetime, f2m$Sub_metering_3, col = "blue")
message("Energy Sub Metering Plot ( bottom left )")
legend('topright', c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col = c('black','red','blue'), lty = 1, lwd = 3)

#Fourth Plot bottom-right
plot(f2m$datetime, f2m$Global_reactive_power, xlab ="datetime", ylab = "Global_reactive_power", type ="l")
message("Global Reactive Power Plot ( bottom right )")

#Closing the Graphic Device
dev.off() # Close the PNG device!