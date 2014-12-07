#Plot 4

data<-read.table('cleandata.txt',header=TRUE,sep=';')             #Read the clean data
data$When<-as.POSIXlt(data$When)                                  #Set the datetime variable "When" to PosixLT
png(width = 480,height = 480,filename = 'plot4.png',units = 'px') #Create a png file

par(mfrow=c(2,2))                                                 #Set up the plot area space
plot(data$When,data$GlobalActivePower,ylab='Global Active Power',xlab='',type='l')          #Plot 1

plot(data$When,data$Voltage,xlab='datetime',ylab='Voltage',type='l')                        #Plot 2  

plot(data$When,data$SubMetering1,ylab='Energy sub metering', xlab='', type='l',col="black") #Plot 3
lines(data$When,data$SubMetering2,col="red")
lines(data$When,data$SubMetering3,col="blue")
legend('topright',legend = c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),
       col=c('black','red','blue'),lty = 'solid')

plot(data$When,data$GlobalReactivePower,
     xlab='datetime',ylab='Global_reactive_power',type='l')                                 #Plot 4

dev.off()                                                         #Close the png

