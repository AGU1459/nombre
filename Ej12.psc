//12. Rellenar una matriz, de 3 x 3, con una palabra de 9 de longitud, pedida por el usuario,
//encontrando la manera de que la frase se muestre de manera continua en la matriz.
//Por ejemplo, si tenemos la palabra habilidad, nuestra matriz se debería ver así:
//		H A B
//		I L I
//		D A D
//	Nota: recordar el uso de la función Subcadena().

Algoritmo Ej12
	definir matriz como caracter
	definir palabra como caracter
	dimension matriz(3, 3)
	escribir "Ingrese una palabra de 9 caracteres"
	leer palabra
	llenarMatriz(matriz, palabra)
	
FinAlgoritmo

subproceso llenarMatriz(matriz, palabra)
	definir i, j como entero
	para i = 0 hasta 0 con paso 1 Hacer
		para j = 0 hasta 2 con paso 1 Hacer
			matriz(i,j) = subcadena(palabra, j, j)
			escribir sin saltar matriz(i,j), " "
		FinPara
		escribir " "
	FinPara
	para i = 1 hasta 1 con paso 1 Hacer
		para j = 0 hasta 2 con paso 1 Hacer
			matriz(i,j) = subcadena(palabra, j+3, j+3)
			escribir sin saltar matriz(i,j), " "
		FinPara
		escribir " "
	FinPara
	para i = 2 hasta 2 con paso 1 Hacer
		para j = 0 hasta 2 con paso 1 Hacer
			matriz(i,j) = subcadena(palabra, j+6, j+6)
			escribir sin saltar matriz(i,j), " "
		FinPara
		escribir " "
	FinPara
	FinSubProceso
	