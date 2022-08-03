
SubProceso  valorazar(matriz,filas,columnas)
	
	
	Definir i, j Como Entero
	
	Para i <- 0 hasta filas-1 con paso 1 Hacer
		para j <- 0 hasta columnas-1 Con paso 1 Hacer
			matriz(i,j) = azar(9)
		FinPara
	FinPara
	Para i<- 0 hasta filas-1 con paso 1 Hacer
		para j <- 0 hasta columnas-1 con paso 1 Hacer
			Escribir matriz(i,j) Sin Saltar
		FinPara
		Escribir " "
	FinPara
FinSubProceso

SubProceso suma(matriz,filas,columnas)
	Definir i, j, x Como Entero
	x = 0
	para i<- 0 hasta filas-1 con paso 1 hacer 
		para j<- 0 hasta columnas-1 con paso 1 hacer 
			x = x + matriz(i,j)
		FinPara

	FinPara
	Escribir " las suma de los elementos de la matriz", x
FinSubProceso


Algoritmo Ejercicio10 
	Definir matriz, filas,columnas Como Entero
	Escribir " Ingrese el número de filas"
	leer filas
	Escribir " ingrese el número de columnas"
	leer columnas
	
	
	Dimension matriz(filas,columnas)
	valorazar(matriz,filas,columnas)
	suma(matriz,filas,columnas)
FinAlgoritmo
	