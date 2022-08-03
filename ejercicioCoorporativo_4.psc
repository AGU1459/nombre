Algoritmo ejercicioCoorporativo_4
	Definir tablero como Cadena
	Dimension tablero[9, 12]
	inicializarMatriz(tablero, 9, 12)
	agregarPalabra(tablero, "vector", 0)
	agregarPalabra(tablero, "matrix", 1)
	agregarPalabra(tablero, "programa", 2)
	agregarPalabra(tablero, "subprograma", 3)
	agregarPalabra(tablero, "subproceso", 4)
	agregarPalabra(tablero, "variable", 5)
	agregarPalabra(tablero, "entero", 6)
	agregarPalabra(tablero, "para", 7)
	agregarPalabra(tablero, "mientras", 8)
	acomodarPalabras(tablero)
	imprimirMatriz(tablero, 9, 12)
FinAlgoritmo

SubProceso inicializarMatriz(tablero, fil, col)
	Definir i, j Como Entero
	Para i=0 Hasta fil - 1  Con Paso 1 Hacer
		Para j=0 Hasta col-1 Con Paso 1 Hacer
			tablero(i, j) = "*"
		Fin Para
	Fin Para
	
	
FinSubProceso

SubProceso imprimirMatriz(tablero, fil, col)
	Definir i, j Como Entero
	Para i=0 Hasta fil - 1  Con Paso 1 Hacer
		Para j=0 Hasta col-1 Con Paso 1 Hacer
			Escribir "" tablero(i, j) " " Sin Saltar
		Fin Para
		Escribir  " "
	Fin Para
FinSubProceso

SubProceso agregarPalabra(tablero, palabra, posicion)
	Definir i, j, retorno Como Entero
	Para i=0 Hasta Longitud(palabra)-1 Con Paso 1 Hacer
		tablero(posicion, i) = subCadena(palabra,i ,i)
	Fin Para
FinSubProceso

SubProceso buscarR(tablero, fila, retorno Por Referencia)
	Definir i, cont Como Entero
	cont = 0
	Para i=0 Hasta 11  Con Paso 1 Hacer
		si	tablero(fila, i) = "r" y cont <1 Entonces
			retorno = i
			cont = cont + 1
		FinSi
	Fin Para
FinSubProceso

SubProceso acomodarPalabras(tablero)
	Definir i, j, agrega, retorno Como Entero
	Definir tablero2 Como Caracter
	Dimension tablero2[9, 12]
	Para i=0 Hasta 8 Con Paso 1 Hacer
		buscarR(tablero, i, retorno)
		agrega = 5 - retorno
		Para j=0 Hasta 11 Con Paso 1 Hacer
			si j < agrega Entonces
				tablero2(i, j) = "*"
			SiNo
				tablero2(i, j) = tablero(i,j - agrega)
			FinSi
		Fin Para
	Fin Para
	Para i=0 Hasta 8 Con Paso 1 Hacer
		Para j=0 Hasta 11 Con Paso 1 Hacer
			tablero(i, j) = tablero2(i, j)
		Fin Para
	Fin Para
	
FinSubProceso