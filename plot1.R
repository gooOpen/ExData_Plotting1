#setwd("Dokumente/Studium/MOOC/Coursera/Data Science/4 - Exploratory Data Analysis/Course Project 1/ExData_Plotting1")

x           <- read.table(file='../household_power_consumption.txt',
                 nrows=70800,sep=";",header=T,na.strings="?",stringsAsFactors=FALSE, dec=".")

x <- x[x$Date %in% c("1/2/2007","2/2/2007"),]

png("plot1.png", width=480, height=480)
hist(x$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
#or dev.copy(png, file="plot1.png") ; dev.off()
dev.off()