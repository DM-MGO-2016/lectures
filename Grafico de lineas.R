x <- c(1:5); y <- x # Se crean los datos (cualquiera) 
par(pch=22, col="blue") # Se indica que se imprimir� en color azul y la cantidad de puntos a agregar por gr�fico 
par(mfrow=c(2,4)) # Se indica la cantidad de gr�ficos a crear
opts = c("p","l","o","b","c","s","S","h") #Se crea un vector con los tipos de lineas
for(i in 1:length(opts)){  #Para cada gr�fico se genera un t�tulo dependiendo del tpo de linea, el tipo de gr�fico a subir (todos en blanco) y el tipo de linea 
  heading = paste("type=",opts[i]) 
  plot(x, y, type="n", main=heading) 
  lines(x, y, type=opts[i]) 
}