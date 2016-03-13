# Reading the data set
f2m <- read.csv("First2Month.csv", header=TRUE, sep=';', na.strings='?')

# Convert Date and Time variables
f2m$datetime <- strptime(paste(f2m$Date,f2m$Time), "%d/%m/%Y %H:%M")

# Plotting the Data
png("plot3.png",width=480,height=480,units="px",bg="transparent")
message("Energy Sub Metering Plot")
plot(f2m$datetime, f2m$Sub_metering_1, xlab ="", ylab = "Energy sub metering", type ="l")

lines(f2m$datetime, f2m$Sub_metering_2, col = "red")
lines(f2m$datetime, f2m$Sub_metering_3, col = "blue")
legend('topright', c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col = c('black','red','blue'), lty = 1, lwd = 3)

#Closing the Graphic Device
dev.off()