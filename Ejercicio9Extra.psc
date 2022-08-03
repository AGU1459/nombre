Algoritmo Ejercicio9Extra
//	Realizar un programa que rellene de números aleatorios una matriz a través de un
	//	subprograma y generar otro subprograma que muestre por pantalla la matriz final.
	
	Definir matriz, filas,columnas Como Entero
	Escribir " Ingrese el número de filas"
	leer filas
	Escribir " ingrese el número de columnas"
	leer columnas
	Dimension matriz(filas,columnas)
	valorazar(matriz,filas,columnas)
	imp(matriz,filas,columnas)
FinAlgoritmo

SubProceso  valorazar(matriz,filas,columnas)
	Definir i, j Como entero 
	Para i <- 0 hasta filas-1 con paso 1 Hacer
		para j<- 0 hasta columnas-1 con paso 1 Hacer
			matriz(i,j) = azar(9)
			
		FinPara
	FinPara
FinSubProceso

SubProceso Imp(matriz,filas,columnas)
	Definir i,j Como Entero
	para i <- 0 hasta filas-1 con paso 1 Hacer
		para j <- 0 hasta columnas-1 con paso 1 Hacer
			Escribir  matriz(i,j) Sin Saltar
		FinPara
		Escribir" "
	FinPara
FinSubProceso
