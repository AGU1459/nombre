Funcion rellenarArreglo( arrelo Por referencia)
	Definir vector, x, a, n  Como entero
	Definir val Como Logico
	
	val = Falso
	
	Escribir "Dame el tamaño del vector a modificar"
	leer n
	
	Dimension vector(n + 1)
	
	para x<- 0 hasta n Hacer
		
		vector(x) = azar(20)
    FinPara
	
	para a <- 1 hasta n hacer 
		Escribir vector(a)
	FinPara
	
	Escribir "El vector es:", val
	
	
Fin Funcion

Algoritmo Ejercicio7
	Definir vector, t, z, i, a Como Entero
	
	Escribir "Ingrese el numero de vector" 
	leer t
	Dimension vector(t + 1)
	para z <- 0 Hasta t Hacer
		vector(z) = azar(20)
		
	FinPara
	para i <- 1 hasta t hacer 
		Escribir vector(i)
	FinPara
	
	
	rellenarArreglo(arrelo)
	
	
	
	
FinAlgoritmo
