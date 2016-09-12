#Graficos de dispersion simple
# Creating a Graph
attach(mtcars)

plot(wt, mpg) 

lm(mpg~wt) # genera una regresion lineal, calcula pendiente y coef de intereseccion

abline(lm(mpg~wt)) # grafica la linea

title("Regression of MPG on Weight")

### HISTOGRAMAS

# Simple Histogram
hist(mtcars$mpg)
summary(mpg) ## resumen estadistico, puedo llamar directamente mpg por attach

# Colored Histogram with Different Number of Bins
hist(mtcars$mpg, breaks=12, col="red")


# Add a Normal Curve (Thanks to Peter Dalgaard)
x <- mtcars$mpg 
h<-hist(x, breaks=10, col="red", xlab="Millas por galon", 
        main="histograma con curva normal") 
xfit<-seq(min(x),max(x),length=40) 
yfit<-dnorm(xfit,mean=mean(x),sd=sd(x)) 

yfit <- yfit*diff(h$mids[1:2])*length(x) 

lines(xfit, yfit, col="blue", lwd=2)


# Kernel Density Plot
d <- density(mtcars$mpg) # returns the density data 
plot(d) # plots the results
# Filled Density Plot
d <- density(mtcars$mpg)
plot(d, main="Kernel Density of Miles Per Gallon")
polygon(x=d, col="red", border="black")

# Compare MPG distributions for cars with 
# 4,6, or 8 cylinders
library(sm)
#install.packages("sm")
attach(mtcars)

# create value labels 
cyl
cyl.f <- factor(cyl, levels= c(4,6,8),
                labels = c("4 cilindros", "6 cilindros", "8 cilindros")) 

# plot densities 
sm.density.compare(mpg, cyl, xlab="Miles Per Gallon")
title(main="MPG Distribution by Car Cylinders")

# add legend via mouse click
levels(cyl.f)

colfill<-c(2:(2+length(levels(cyl.f)))) 
legend(locator(1), levels(cyl.f), fill=colfill)

#### GRAFICOS de PUNTOS

# Simple Dotplot
dotchart(mtcars$mpg,labels=row.names(mtcars),cex=.7,
         main="Gas Milage for Car Models", 
         xlab="Miles Per Gallon")

# Dotplot: Grouped Sorted and Colored
# Sort by mpg, group and color by cylinder 
x <- mtcars[order(mtcars$mpg),] # sort by mpg

x$cyl <- factor(x$cyl) # it must be a factor
x$color[x$cyl==4] <- "red"
x$color[x$cyl==6] <- "blue"
x$color[x$cyl==8] <- "darkgreen"	
dotchart(x$mpg,labels=row.names(x),cex=.7,groups= x$cyl,
         main="Gas Milage for Car Models\ngrouped by cylinder",
         xlab="Miles Per Gallon", gcolor="black", color=x$color)
row.names(x)
