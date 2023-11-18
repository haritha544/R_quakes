e_quakes<-datasets::quakes
head(quakes,10)
tail(quakes,10)
quakes[,c(3,4)]
quakes[,-6]
quakes$depth
summary(quakes$depth)
summary(quakes)
plot(quakes$depth)
plot(quakes$depth, quakes$mag, type="p")
plot(quakes)
plot(quakes$depth, xlab = 'depth', ylab = 'mag',
     main = 'plot of earthquakes', col = 'blue')
#Horizontal Bar Plot
barplot(quakes$depth, xlab = 'depth', ylab = 'mag',
        main = 'plot of earthquakes ', col = 'blue', horiz = F, axes = T)
#Histogram
hist(quakes$depth)
hist(quakes$depth, xlab = 'depth', ylab = 'mag', 
     main = 'histogram for earthquake', col = 'blue')
#Single Box plot
boxplot(quakes$depth, main = 'box plot for earthquakes')
boxplot.stats(quakes$depth)$out
#Multiple Box plot
boxplot(quakes[,1:4], main = 'boxplot')
#All generated plots in one frame
par(mfrow=c(3,3), mar=c(2,5,2,1),las=0,bty="o")

plot(quakes$depth)
plot(quakes$depth, quakes$mag)
plot(quakes$depth, type="l")
plot(quakes$depth, type="l")
plot(quakes$depth, type="l")
barplot(quakes$depth, xlab = 'concnetration',
        main = 'depth levels for earthquake', col = 'green', horiz = T)
hist(quakes$stations)
boxplot(quakes$stations)
boxplot(quakes[,0:4],main='multiple box plots')