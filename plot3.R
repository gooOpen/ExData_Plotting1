#setwd("Dokumente/Studium/MOOC/Coursera/Data Science/4 - Exploratory Data Analysis/Course Project 1/ExData_Plotting1")
x           <- read.table(file='../household_power_consumption.txt',
                          nrows=70800,sep=";",header=T,na.strings="?",stringsAsFactors=FALSE, dec=".")

x <- x[x$Date %in% c("1/2/2007","2/2/2007"),]
x$datetime <- strptime(paste(x$Date, x$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

png("plot3.png", width=480, height=480)
plot(x$datetime,x$Sub_metering_1, type="n", xlab="", ylab="Energy sub metering")    #add empty base construction
with(x, lines(datetime, Sub_metering_1, col="black"))                               #add line 1 in black
with(x, lines(datetime, Sub_metering_2, col="red"))                                 #add line 2 in red
with(x, lines(datetime, Sub_metering_3, col="blue"))                                #add line 3 in blue
legend("topright",col=c("black","red","blue"),lty=1, lwd=2,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
#or dev.copy(png, file="plot1.png") ; dev.off()
dev.off()