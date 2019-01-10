par(mfrow=c(1,1))

#Plot Parameters
data("pressure")
mercury<-pressure
plot(mercury$temperature, mercury$pressure,
     xlab="Temperature", #xlabel
     ylab="Pressure", #ylabelda
     main="TvsP for Mercury", #title
     type="o", 
     col="orange",
     col.main="darkgray", #title color
     cex.axis=0.6, #font size of scale
     lty=5, #line type
     pch=4) #plot symbol


#Layouts
par(mfrow=c(2,2))
plot(mercury$temperature, mercury$pressure)
plot(mercury$temperature, mercury$pressure)
plot(mercury$temperature, mercury$pressure)
par(mfcol=c(2,2))
plot(mercury$temperature, mercury$pressure)
plot(mercury$temperature, mercury$pressure)

grid<-matrix(c(1,1,2,3),nrow=2,ncol=2,byrow=TRUE)
layout(grid)
plot(mercury$temperature, mercury$pressure)
plot(mercury$temperature, mercury$pressure)
plot(mercury$temperature, mercury$pressure)

#Add information layers
layout(1)
ranks<-order(mercury$temperature)
plot(mercury$temperature, mercury$pressure)
lmm<-lm(mercury$temperature~mercury$pressure)
abline(coef(lmm),lwd=2)
lines(mercury$temperature[ranks],mercury$pressure[ranks])

install.packages("GLMsData")
library("GLMsData")
data("lungcap")
lc<-lungcap
dim(lc)
names(lc)
count<-table(lc$Gender)
percent<-table(lc$Gender)/684

#Barchart -freq for each category of a categorical variable
barplot(count, main="TITLE", ylab="Gender", xlab="Count",
        las=1, names.arg=c("Female","Male"),horiz=TRUE)

#Piecharts -summarizng dist of a categorical variable
pie(percent, main="TITLE")
box()

t1<-table(lc$Smoke, lc$Gender)
barplot(t1)
