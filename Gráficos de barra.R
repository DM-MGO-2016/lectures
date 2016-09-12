# Gráfico de barra simple
counts <- table(mtcars$gear)
barplot(counts, main="Car Distribution", xlab="Number of Gears") 
##gráfica de barra vertical con parámetro de título (mins) y nombre de label (xlab)
## parámetro counts matriz, este caso tabla frecuencia 

# Gráfica de barra horizntal con características de label
counts <- table(mtcars$gear)
barplot(counts, main="Car Distribution", horiz=TRUE,
        names.arg=c("3 Gears", "4 Gears", "5 Gears"))
#a diferencia del anterior el parametro horizontal (horiz) esta activo quien le da
## la característica horizontal, del anterior esta viene FALSE por default
### se agrega argumento de nombres de "categorias"

# Stacked Bar Plot with Colors and Legend
counts <- table(mtcars$vs, mtcars$gear) ##comparación de dos categorias
barplot(counts, main="Car Distribution by Gears and VS",
        xlab="Number of Gears", col=c("darkblue","red"), ##agregando color(col)
        legend = rownames(counts))