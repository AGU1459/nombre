Algoritmo Ejercicio5
//	Realizar un programa que rellene un vector de tama�o N, con valores ingresados por el
//	usuario. A continuaci�n, se deber� crear una funci�n que reciba el vector y devuelva el valor
	//	m�s grande del vector.
	
	Definir vector, num, n,i, mayor Como Entero
	mayor = -999
	Escribir "Ingrese el tama�o del vector"
	leer n
	Dimension vector(n)
	Para i <- 0 Hasta n-1 con paso 1 Hacer
		Escribir " Ingrese el valor para el vector " 
		leer num
		vector(i) = num 
	FinPara
	Para i<-0 Hasta n-1 Con Paso 1 Hacer
		Si (vector(i)>=mayor) Entonces
			mayor = vector(i)
			
		FinSi
		
		
	Fin Para
	Escribir " El mayor es: ", mayor

FinAlgoritmo
