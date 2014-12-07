#Plot 3

data<-read.table('cleandata.txt',header=TRUE,sep=';')             #Read the clean data
data$When<-as.POSIXlt(data$When)                                  #Set the datetime variable "When" to PosixLT
png(width = 480,height = 480,filename = 'plot3.png',units = 'px') #Create a png file
plot(data$When,data$SubMetering1,
     ylab='Energy sub metering', xlab='', type='l',col="black")   #Plot Submetering 1 in black
lines(data$When,data$SubMetering2,col="red")                      #Plot Submetering 2 in red
lines(data$When,data$SubMetering3,col="blue")                     #Plot Submetering 3 in blue
legend('topright',legend = c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),
                  col=c('black','red','blue'),lty = 'solid')      #Set the legend
dev.off()                                                         #Close the png
