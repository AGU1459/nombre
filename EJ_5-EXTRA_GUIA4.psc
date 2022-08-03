//6. Disponemos de un vector unidimensional de 20 elementos de tipo carácter. Se pide 
//desarrollar un programa que:
//	a) Pida una frase al usuario y luego ingrese la frase dentro del arreglo letra por letra. 
//Ayuda: utilizar la función Subcadena de PSeInt.
//	b) Una vez completado lo anterior, pedirle al usuario un carácter cualquiera y una 
//	posición dentro del arreglo, y el programa debe intentar ingresar el carácter en la 
//	posición indicada, si es que hay lugar (es decir la posición está vacía o es un espacio 
//	en blanco). De ser posible debe mostrar el vector con la frase y el carácter ingresado, 
//	de lo contrario debe darle un mensaje al usuario de que esa posición estaba ocupada. 
//	
SubProceso mostrar_vector(vector,n)
	Definir i Como Entero
	Para i <- 0 hasta (n-1) con paso 1 Hacer
		si i <> n-1 Entonces
			si i == 0  Entonces
				Escribir Sin Saltar '['
			FinSi
			Escribir Sin Saltar vector[i] ','
			
		SiNo
			
			Escribir vector[i] ']'
		FinSi
	FinPara
	
FinSubProceso
Algoritmo ej6
	Definir vector , car, frase Como Caracter
	definir espacio Como Entero
	Definir i , j , min , max Como Entero
	i = -1
	Definir band Como Logico
	Dimension vector[20]
	Dimension espacio[20]
	min = -1
	max = -1
	band = Falso
	Hacer
		si i = 0 Entonces
			Escribir 'Frase muy larga.'
		FinSi
		Escribir 'Ingrese una frase a guardar:'
		Leer frase
		i = 0
	Mientras Que Longitud(frase) > 20 
	
	para i <- 0 Hasta 19 con paso 1 Hacer
		si i <= Longitud(frase) Entonces
			vector[i] = Subcadena(frase,i,i)
			si vector[i] <> ' ' Entonces
				espacio[i]= 1
			SiNo
				espacio[i]= 0
			FinSi
		SiNo
			vector[i] =''
			espacio[i]= 0
		FinSi		
	FinPara
	
	Escribir 'Ingrese un caracter a insertar en la frase: '
	leer car
	Repetir
		Escribir 'Ingrese la posicion donde insertarla del 0 al 19:'
		leer i
	Mientras Que i <0 o i > 19
	
	
	si i <= Longitud(frase) y vector[i] <>' ' Entonces
		
		para j <-0 Hasta 19 Hacer
			si i < j y espacio[j] = 1 Entonces
				min = j
			SiNo
				si i>j y espacio[j]= 1 y band = Falso Entonces
					max = j
					band = Verdadero
				FinSi
			FinSi
		FinPara
		band =  Falso
		
		si (i - min) < (max-i) Entonces
			para j <- 0 Hasta 19 Hacer
				si j = i Entonces
					vector[i] = car
					
				SiNo
					si j < i Entonces
						si vector[j] = ' '
							band = Verdadero
							vector[j]=Subcadena(frase,(j+1),(j+1))
						SiNo
							si band = Falso Entonces
								vector[j] = Subcadena(frase,j,j)
							SiNo
								vector[j] = Subcadena(frase,j+1,j+1)
							FinSi
							
						FinSi
					FinSi
				FinSi
			FinPara
			
		SiNo
			para j <- 0 Hasta 19 Hacer
				si j < i Entonces
					vector[j] = Subcadena(frase,(j),(j))
					
				SiNo
					si j >= i Entonces
						si j < 18
							vector[j+1] = Subcadena(frase,(j),(j))
						sino 
							vector[j] = Subcadena(frase,(j),(j))
						FinSi
						
					FinSi
				FinSi
			FinPara
			vector[i] = car
		FinSi
		mostrar_vector(vector,20) 
	SiNo
		vector[i] = car
		mostrar_vector(vector,20) 
	FinSi
	
	
	
	
FinAlgoritmo
