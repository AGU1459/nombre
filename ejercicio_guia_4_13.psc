Algoritmo ejercicio_guia_4_13
//	Una matriz mágica es una matriz cuadrada (tiene igual número de filas que de columnas) que
//	tiene como propiedad especial que la suma de las filas, las columnas y las diagonales es igual.
//Por ejemplo:
//	2 7 6
//	9 5 1
//	4 3 8
//	En la matriz de ejemplo las sumas son siempre 15. Considere el problema de construir un
//	algoritmo que compruebe si una matriz de datos enteros es mágica o no, y en caso de que
//	sea mágica escribir la suma. Además, el programa deberá comprobar que los números
//	introducidos son correctos, es decir, están entre el 1 y el 9. El usuario ingresa el tamaño de la
//	matriz que no debe superar orden igual a 10.
	Definir  matL, mat, i, j, suma, num, k, salto Como Entero
	Definir x, totx, totp, y1, toty, d1, totd1, d2, totd2 Como Entero
	totx=0; totp=0; y1=0; toty=0; d2=0; matL = 0; salto=0; totd1=0; totd2=0
	
	Mientras matL < 2 o matL >= 10 Hacer
		Escribir "Ingrese el largo de la matriz"
		leer matL
	Fin Mientras
	
	Dimension mat[matL, matL]
	
	Para i=0 Hasta matL-1 Con Paso 1 Hacer
		Para j=0 Hasta matL-1 Con Paso 1 Hacer
			Escribir "Ingrese un número"
			Leer num
			si num >= 1 o num <=9 Entonces
				mat(i, j) = num
			SiNo
				j = j - 1
			FinSi
		Fin Para
	Fin Para
	
	// muestra matriz
	Para i=0 Hasta matL-1 Hacer
		para J=0 Hasta  matL-1 Hacer
			Escribir i ", " j " -> " mat(i, j) Sin Saltar "    "
			Escribir " "
		FinPara
	FinPara
	
	// suma filas
	Para i=0 Hasta matL-1 Hacer
		x=0
		para J=0 Hasta  matL-1 Hacer
			x = x + mat(i, j)
		FinPara
		Escribir "La suma de la fila " i " es " x
		totx = totx + x
	FinPara
	Escribir totx
	
	// suma columnas
	Para j=0 Hasta matL-1 Hacer
		y1 = 0
		para i=0 Hasta  matL-1 Hacer
			y1 = y1 + mat(i, j)
		FinPara
		Escribir "La suma de la columna " j " es " y1
		toty = toty + y1
	FinPara
	Escribir  toty
	
	//sumo la diagonal 1
	Para i=0 Hasta matL-1 Hacer
		d1 =0
		para J=salto Hasta  matL-1 Hacer
			d1 = d1 + mat(i, j)
			salto = salto + 1
			j=j+ matL
		FinPara
		Escribir "La suma de la diagonal principal es " d1
		totd1 = totd1 + d1
	FinPara
	
	Escribir "Suma " totd1
	
	
	//sumo la diagonal 1
	salto = matL-1
	Para i=0 Hasta matL-1 Hacer
		d2 =0
		para J=salto Hasta  matL-1 Hacer
			d2 = d2 + mat(i, j)
			salto = salto - 1
			j=j+ matL-1
		FinPara
		Escribir "La suma de la diagonal secundaria es " d2
		totd2=totd2 + d2
	FinPara
	Escribir "Suma " totd2
	
	si totd2 = totd1 y totd2 = (toty/3) y totd2 = (totx/3)
		Escribir " "
		Escribir "Es una matriz mágica"
		Escribir "Y la suma es " totd2
	SiNo
		Escribir " "
		Escribir "No es una matriz mágica"
	FinSi
FinAlgoritmo
