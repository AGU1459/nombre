Algoritmo Ejercicio3
//	Realizar un programa que rellene un vector de tamaño N, con valores ingresados por el
//	usuario. A continuación, se debe buscar un elemento dentro del arreglo (el número a buscar
//	también debe ser ingresado por el usuario). El programa debe indicar la posición donde se
//	encuentra el valor. En caso que el número se encuentre repetido dentro del arreglo se deben
//	imprimir todas las posiciones donde se encuentra ese valor.
//	Finalmente, en caso que el número a buscar no está adentro del arreglo se debe mostrar un
	//mensaje.
	Definir vector, n, k, i, numabuscar Como Entero
	Definir encontrado Como Logico
	Escribir " Ingrese la cant. para el tamaño"
	leer n
	Dimension vector(n)
	Para i<-0 Hasta n-1 Con Paso 1 Hacer
		Escribir " Ingrese el número para el subindice"
		leer k
		vector(i) = k
	
		
	FinPara
	para i<- 0 hasta k  con paso 1 Hacer
		Escribir Sin Saltar "[" vector(i) "]"
		
	FinPara
	Escribir "numero a buscar" 
	leer numabuscar
	encontrado = falso
	Para i<-0 Hasta k Con Paso 1 Hacer
		
		Si numabuscar = vector(i) Entonces
			Escribir "Se ha encontrado el numero ",numabuscar," en la posicion ",i,Verdadero
			encontrado = verdadero 
			
		SiNo
			si numabuscar <> vector(i) Entonces
				Escribir "No se ha encontrado ningun elemento", Falso
				encontrado = Falso
				
			Finsi
		Fin Si
		
    Fin Para
	
	
    
    
    
	
FinAlgoritmo
