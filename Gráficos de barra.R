# Gráfico de barra simple
counts <- table(mtcars$gear)
counts # gear es el numero de cambios.
barplot(counts, main="Car Distribution", xlab="Number of Gears") 
##gráfica de barra vertical con parámetro de título (mins) y nombre de label (xlab)
## parámetro counts matriz, este caso tabla frecuencia 

## cnatida de autos que tiene una cantidad de marchas determinada.
## la autos de 3 marchas son los mas populares


# Gráfica de barra horizntal con características de label
counts <- table(mtcars$gear)
barplot(counts, main="Car Distribution", horiz=TRUE,
        names.arg=c("3 Gears", "4 Gears", "5 Gears"))
#a diferencia del anterior el parametro horizontal (horiz) esta activo quien le da
## la característica horizontal, del anterior esta viene FALSE por default
### se agrega argumento de nombres de "categorias"

# Stacked Bar Plot with Colors and Legend

#si quieres saber que signica vs, revisa el siguiente URL
# http://stackoverflow.com/questions/18617174/r-mtcars-dataset-meaning-of-vs-variable


#I think it's whether the car has a V engine or a straight engine. I'm basing this on the foot note on the page numered 396 of http://www.mortality.org/INdb/2008/02/12/8/document.pdf

#Asi podemos saber cuales son los distintos valores posibles para la variable analizada
unique(mtcars$vs)

counts <- table(mtcars$vs, mtcars$gear) ##comparación de dos categorias
# tabla de frecuencia para las marchas por tipo de motor
counts

barplot(counts, main="Car Distribution by Gears and VS",
        xlab="Number of Gears", col=c("darkblue","red"), ##agregando color(col)
        legend = rownames(counts))

### para hacer un grafico por tipo de motor...
counts <- table(mtcars$gear,mtcars$vs)
barplot(counts, main="Car Distribution by VS and Gears",
        xlab="Type of Engine", col=c("darkblue","red","green"), ##agregando color(col)
        legend = rownames(counts))
