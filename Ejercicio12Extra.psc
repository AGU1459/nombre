Algoritmo Ejercicio12Extra
//	Realizar un programa que cree una matriz de 5x15 y deberemos llenar la matriz de unos y
//	ceros. Llenando el marco o la delimitación externa de la matriz de unos y la parte interna de
//	ceros.
	//Por ejemplo, nuestro matriz final debería verse así:
	Definir matriz, i, j,f,c Como Entero
	
	
	Escribir"Ingrese la cantindad de filas"
	leer f
	Escribir " Ingrese la cantidad de columnas"
	leer c
	
	Dimension matriz(f,c)
	
	
	para i <- 0 hasta f-1 con paso 1 hacer 
		para j<- 0 hasta c-1 con paso 1 hacer 
			
			si i = 0 o i = f o j = 0 o j= c o i = 4 o j = 14 Entonces
			  matriz(i,j) = 1 
			SiNo
				 matriz(i,j) = 0
			FinSi
				
		FinPara
	FinPara

		
	para i<- 0 hasta f-1 con paso 1 hacer 
		para j<-0 hasta c-1 con paso 1 Hacer
			Escribir matriz(i,j) Sin Saltar
		FinPara
		Escribir " "
	FinPara
	
FinAlgoritmo
