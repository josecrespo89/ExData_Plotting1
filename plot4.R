x<-subset(read.csv("household_power_consumption.txt", header=T, sep=";"), Date == "1/2/2007")
y<-subset(read.csv("household_power_consumption.txt", header=T, sep=";"),Date == "2/2/2007")
z<-rbind(x,y)
x<-paste(z[,1],z[,2])
y<-strptime(x,"%d/%m/%Y %H:%M:%S") 
png(filename = "plot3.png")
par(mfrow=c(2,2))
plot(y, as.numeric(levels(z[,3])[z[,3]]), type = "l",ylab = "Global Active Power",xlab="")
plot(y, as.numeric(levels(z[,5])[z[,5]]), type = "l",ylab = "Voltage",xlab="")
plot(y,as.numeric(levels(z[,7])[z[,7]]),type="l",xlab="",ylab="Energy sub metering",yaxp=c(0,30,3),ylim=c(0,30))
lines(y,as.numeric(levels(z[,8])[z[,8]]),col="red")
lines(y,z[,9],col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,col=c("black","red","blue"),cex=0.5)
plot(y, as.numeric(levels(z[,4])[z[,4]]), type = "l",ylab = "Global_reactive_power",xlab="",cex.axis=0.8)
dev.off()
