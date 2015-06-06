# set working directory
setwd("C:/Users/marco_000/Desktop/Cursos Marcos/DATA SCIENCE/Exploratory Data Analysis/Course Project 1/source data")

#Open device
png(filename='plot2.png',width=480,height=480,units='px')

#plot data
x<-as.numeric(p_consumption$Global_active_power)

plot(p_consumption$DateTime,x,ylab='Global Active Power (kilowatts)', xlab='', type='l')

#Turn off device
z<-dev.off()