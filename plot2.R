#Plot 2

data<-read.table('cleandata.txt',header=TRUE,sep=';')             #Read the clean data
data$When<-as.POSIXlt(data$When)                                  #Set the datetime variable "When" to PosixLT
png(width = 480,height = 480,filename = 'plot2.png',units = 'px') #Create a png file
plot(data$When,data$GlobalActivePower,
     ylab='Global Active Power (kilowatts)',xlab='',type='l')     #Plot the data
dev.off()                                                         #Close the png
