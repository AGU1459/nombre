Algoritmo Ejercicio10Extras
	Definir a,trans, i,j, filas,columnas Como Entero
	Escribir "Ingrese el números de filas"
	leer filas 
	Escribir " Ingrese el número de columnas:"
	leer columnas
	
	Dimension a(filas,columnas)
	Dimension trans(columnas,filas)
	
	para i <- 0 hasta filas-1 con paso 1 Hacer
		para j<- 0 hasta columnas-1 con paso 1 hacer 
			a(i,j) = azar(100)
		FinPara
	FinPara
	
	para i<- 0 hasta filas-1 con paso 1 Hacer
		para j <- 0 hasta columnas-1 con paso 1 Hacer
			Escribir Sin Saltar a(i,j)
		FinPara
		Escribir " "
	FinPara
	Escribir " "
	
	para i<- 0 hasta filas-1 con paso 1 hacer 
		para j<- 0 hasta columnas-1 con paso 1 hacer
			trans(j,i) = a(j,i)
		FinPara
	FinPara
	para i<- 0 hasta filas-1 con paso 1 Hacer
		para j<- 0 hasta columnas-1 con paso 1 Hacer
			Escribir Sin Saltar trans(j,i)
		
		FinPara
		Escribir " "
	FinPara
FinAlgoritmo
