x<-subset(read.csv("household_power_consumption.txt", header=T, sep=";"), Date == "1/2/2007")
y<-subset(read.csv("household_power_consumption.txt", header=T, sep=";"),Date == "2/2/2007")
z<-rbind(x,y)
png(filename = "plot1.png")
hist(as.numeric(levels(z[,3])[z[,3]]),col="red",xlab="Global_active_power", main="Global Active Power")
dev.off()





