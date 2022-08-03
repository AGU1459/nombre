

Algoritmo Ejercicio13Extra 
	Definir mat,fila, columna, i , j, num, x Como Entero
	
	Escribir " Ingrse la fila de la matriz"
	leer fila
	Escribir " Ingrese la columna de la matriz"
	leer columna
	Dimension mat[fila, columna]
	
	
	Para i=0 Hasta fila-1 Con Paso 1 Hacer
		Para j=0 Hasta columna-1 Con Paso 1 Hacer
			Escribir "Ingrese un número"
			leer num
			
		mat(i,j) = num
		Fin Para
	Fin Para
	para i <- 0 hasta fila -1 con paso 1 hacer
		para j<- 0 hasta columna-1 con paso 1 Hacer
			Escribir sin saltar mat(i,j)
		
		FinPara
		Escribir " "
	FinPara
	
	para i<- 0 hasta fila-1 con paso 1 hacer 
		x= 0
		para j<-0 hasta columna-1 con paso 1 Hacer
			
		
		x = x + num
		Escribir sin saltar mat(i,j)," = "  x
	FinPara
	Escribir " "
		fin para
	
FinAlgoritmo

