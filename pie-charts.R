# Simple Pie Chart

# definimos valores arbitrarios
slices <- c(10, 12,4, 16, 8) 
# algunos nombres de paises
lbls <- c("US", "UK", "Australia", "Germany", "France") 

# asociamos las cantidades con los paises y graficamos una torta
# esto se pudo porque la cantidades y los paises coinciden en numero
#el calculo de los porcentajes es automatico
pie(slices, labels = lbls, main="Pie Chart of Countries") 


#de aqui obtuve alguna paletas distintas
## https://www.r-bloggers.com/color-palettes-in-r/
require(graphics)
pie(slices, labels = lbls, col=terrain.colors(5), main="Pie Chart of Countries") 
pie(slices, labels = lbls, col=heat.colors(5), main="Pie Chart of Countries") 

# Pie Chart with Percentages
slices <- c(10, 12, 4, 16, 8) 
lbls <- c("US", "UK", "Australia", "Germany", "France")
#calculando explicitamente los porcentajes
pct <- round(slices/sum(slices)*100)
lbls <- paste(lbls, pct) # add percents to labels 
lbls <- paste(lbls,"%",sep="") # ad % to labels 
pie(slices,labels = lbls, col=rainbow(length(lbls)),
    main="Pie Chart of Countries")


# 3D Exploded Pie Chart
#install.packages("plotrix") #descomenta apra instalar
library(plotrix)

slices <- c(10, 12, 4, 16, 8) 
lbls <- c("US", "UK", "Australia", "Germany", "France")
pie3D(slices,labels=lbls,explode=0.1,
      main="Pie Chart of Countries ")



# Pie Chart from data frame with Appended Sample Sizes
mytable <- table(iris$Species)
lbls <- paste(names(mytable), "\n", mytable, sep="")
pie(mytable, labels = lbls, 
    main="Pie Chart of Species\n (with sample sizes)")
