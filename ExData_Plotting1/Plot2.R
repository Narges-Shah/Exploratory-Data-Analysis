# Reading the data set
f2m <- read.csv("First2Month.csv", header=TRUE, sep=';', na.strings='?')

# Convert Date and Time variables
f2m$datetime <- strptime(paste(f2m$Date,f2m$Time), "%d/%m/%Y %H:%M")

# Plotting the Data
png("plot2.png",width=480,height=480,units="px",bg="transparent")
message("Global Active Power Plot")
plot(f2m$datetime, f2m$Global_active_power, xlab ="", ylab = "Global Active Power", type ="l")

#Closing the Graphic Device
dev.off()