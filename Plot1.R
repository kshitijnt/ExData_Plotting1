setwd("~/Documents/Data Science")
powerinfo <- read.csv("./household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")
powerinfo <- powerinfo[powerinfo$Date =="1/2/2007" | powerinfo$Date =="2/2/2007",]
hist(powerinfo$Global_active_power,xlab="Global Active Power (kilowatts)",col="red", main="Global Active Power")
dev.copy(png,file="plot1.png",width=480,height=480)
dev.off()
