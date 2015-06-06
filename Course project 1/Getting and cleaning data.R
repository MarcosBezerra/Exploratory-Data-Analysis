##Course Project 1

# download the zip file and unzip

file.url<-'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
download.file(file.url,destfile = paste(getwd(),'power_consumption.zip'))
unzip(paste(getwd(),'power_consumption.zip'),exdir='source data',overwrite=TRUE)

# read the raw table and limit to 2 days
variable.class<-c(rep('character',2),rep('numeric',7))
p_consumption<-read.table('source data/household_power_consumption.txt',header=TRUE,sep=';',na.strings='?',colClasses=variable.class)
p_consumption<-p_consumption[p_consumption$Date=='1/2/2007' | p_consumption$Date=='2/2/2007',]

#convert date/time fields



p_consumption$DateTime<-dmy(p_consumption$Date)+hms(p_consumption$Time)

p_consumption$DateTime<-as.POSIXlt(p_consumption$DateTime)