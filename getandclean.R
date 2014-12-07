#Packages
library(data.table)
library(lubridate)
headerclasses<-c(rep('character',2),rep('numeric',7))              #Defining classes for column headers
raw1<-read.table('household_power_consumption.txt',
                 header=TRUE,sep=';',na.strings='?',
                 colClasses=headerclasses)                         #Reading giant raw data and storing it
selectData<-raw1[raw1$Date=='1/2/2007' | raw1$Date=='2/2/2007',]   #Filtering out data for given dates

colnames(selectData)<-c('Date','Time','GlobalActivePower',
                        'GlobalReactivePower','Voltage','GlobalIntensity',
                        'SubMetering1','SubMetering2','SubMetering3') #Renaming header variables
selectData$When<-dmy(selectData$Date)+hms(selectData$Time)            #Combining date and time into 'When'
selectData<-selectData[,c(10,3:9)]                                    #rearranging the columns with 'When"
write.table(x = selectData,file = "cleandata.txt",sep = ';',row.names=FALSE) #Writing out a clean data set
