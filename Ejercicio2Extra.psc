Algoritmo Ejercicio2Extra
//	Realizar un programa que rellene un vector de tamaño N, con valores ingresados por el
	//	usuario y muestre por pantalla el promedio de la suma de todos los valores ingresados.
	Definir n, vector, promedio,num,suma, i Como Entero
	suma = 0 
	

	Escribir " Ingrese el número de vector"
	leer n
	
	dimension vector(n)
	
	para i<- 0 hasta n-1 con paso 1 hacer
		Escribir " Ingrese un num"
		leer num
		vector(i) = num
	FinPara
	
	para i <- 0 hasta n-1 con paso 1 hacer 
		
		suma = suma + vector(i)
		Escribir "la suma es:", suma
	FinPara
	para i <- 0 hasta n-1 con paso 1 hacer 
		promedio = suma/n
		Escribir "El promedio es:",promedio
	FinPara
FinAlgoritmo
