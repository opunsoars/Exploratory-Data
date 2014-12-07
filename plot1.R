#Plot 1

data<-read.table('cleandata.txt',header=TRUE,sep=';')             #Read the clean data
data$When<-as.POSIXlt(data$When)                                  #Set the data's datetime variable"When" to PosixLT
png(width = 480,height = 480,filename = 'plot1.png',units = 'px') #Create a png file
hist(data$GlobalActivePower,col='red',
     main='Global Active Power',
     xlab='Global Active Power (kilowatts)')                      #Plot the data variable histogram
dev.off()                                                         #Close the png

