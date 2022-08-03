Algoritmo Ejercicio2
//	Realizar un programa que lea 10 números reales por teclado, los almacene en un arreglo y
//	muestre por pantalla la suma, resta y multiplicación de todos los números ingresados al
	//	arreglo.
	Definir vector, num, suma,resta,multiplicacion, i Como Entero
	Dimension vector(10)
	suma = 0
	resta = 0
	multiplicacion = 0
	Para i<-0 Hasta 9 Con Paso 1 Hacer
		Escribir " Ingrese un número" 
		leer num
		vector(i) = num
		
	FinPara
	Para i<-0 Hasta 9 Con Paso 1 Hacer
		
		Escribir Sin Saltar "[" vector(i) "]"
		
	Fin Para
	para i<- 0 hasta 9 con paso 1 hacer 
		suma<- suma + vector(i)
		Escribir " la suma es: ", suma
		para i<- 0 hasta 9 con paso 1 hacer 
			resta<- resta - vector(i)
			Escribir " la resta es: ", resta
		FinPara
	FinPara
	para i<- 0 hasta 9 con paso 1 hacer 
		multiplicacion<- multiplicacion + vector(i)
		Escribir " la multiplicacion es: ", multiplicacion
	FinPara
FinAlgoritmo
