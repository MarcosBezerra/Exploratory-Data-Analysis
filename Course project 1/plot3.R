# set working directory
setwd("C:/Users/marco_000/Desktop/Cursos Marcos/DATA SCIENCE/Exploratory Data Analysis/Course Project 1/source data")

#Open device
png(filename='plot3.png',width=480,height=480,units='px')

#plot data
colors<-c('black','red','blue')
linhas<-c("Sub_metering_1","Sub_metering_2","Sub_metering_3")

plot(p_consumption$DateTime,p_consumption$Sub_metering_1,type='l',col=colors[1],xlab="",ylab='Energy sub metering')
lines(p_consumption$DateTime,p_consumption$Sub_metering_2,col=colors[2])
lines(p_consumption$DateTime,p_consumption$Sub_metering_3,col=colors[3])

legend('topright',legend=linhas,col=colors,lty='solid')

#Turn off device
z<-dev.off()
