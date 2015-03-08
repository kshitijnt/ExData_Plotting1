setwd("~/Documents/Data Science")
powerinfo <- read.csv("./household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")
powerinfo <- powerinfo[powerinfo$Date =="1/2/2007" | powerinfo$Date =="2/2/2007",]
dt = paste(powerinfo$Date,powerinfo$Time)
dt <- strptime(dt,format="%d/%m/%Y %T")
plot(dt,powerinfo$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab="")
dev.copy(png,file="plot2.png",width=480,height=480)
dev.off()
