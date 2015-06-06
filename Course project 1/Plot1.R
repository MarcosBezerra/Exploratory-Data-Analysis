# set working directory
setwd("C:/Users/marco_000/Desktop/Cursos Marcos/DATA SCIENCE/Exploratory Data Analysis/Course Project 1/source data")

#Open device
png(filename='plot1.png',width=480,height=480,units='px')

#plot data
x<-as.numeric(p_consumption$Global_active_power)

hist(x,main='Global Active Power',xlab='Global Active Power (kilowatts)',col='red')

#Turn off device
z<-dev.off()