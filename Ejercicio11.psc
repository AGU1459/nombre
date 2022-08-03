SubProceso  relleno( matriz,filas,columnas )
	
	Definir f, c Como Entero
	para f<- 0 hasta 5 con paso 1 Hacer
		para c<- 0 hasta 5 con paso 1 Hacer
			si (f == c) Entonces
				matriz(f,c) = 0
			FinSi
		FinPara
	FinPara
Fin subproceso
SubProceso imprenta(matriz,filas,columnas)
	Definir f,c Como Entero
	para f<- 0 hasta 5 con paso 1 hacer 
		para c<- 0 hasta 5 con paso 1 Hacer
			Escribir sin saltar (matriz(f,c))
		FinPara
		escribir " "
	FinPara
	
FinSubProceso

Algoritmo Ejercicio11
//	Rellenar en un subproceso una matriz cuadrada con números aleatorios salvo en la diagonal
//		principal, la cual debe rellenarse con ceros. Una vez llena la matriz debe generar otro
	//		subproceso para imprimir la matriz.
	
	Definir f,c, matriz,filas, columnas Como Entero
	filas = 6
	columnas = 6 
	dimension matriz(filas,columnas)
	
	para f<- 0 hasta 5 con paso 1 hacer 
		para c<- 0 hasta 5 con paso 1 hacer 
			matriz(f,c) = azar(9)
		FinPara
	FinPara
	
	 relleno(matriz,filas,columnas)
	imprenta(matriz,filas,columnas)
	
FinAlgoritmo
