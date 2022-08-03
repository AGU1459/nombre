
Algoritmo ejercicio_guia_4_extra_16
//	Una distribuidora de Nescafé tiene 4 representantes que viajan por toda la Argentina
//ofreciendo sus productos. Para tareas administrativas el país está dividido en cinco zonas:
//		Norte, Sur, Este, Oeste y Centro. Mensualmente almacena sus datos y obtiene distintas
//		estadísticas sobre el comportamiento de sus representantes en cada zona. Se desea hacer un
//	programa que lea el monto de las ventas de los representantes en cada zona y calcule luego:
//		a) el total de ventas de una zona introducida por teclado
//		b) el total de ventas de un vendedor introducido por teclado en cada una de las zonas
//		c) el total de ventas de todos los representantes.
	Definir mat, i, j, n, s, e, oe, c Como Real
	Definir op, opZ, opV Como Caracter
	op=" "; opZ=" "; opV=" "; n=0
	
	Dimension mat[4, 5]
	
	// genero valores de ventas
	Para i=0 Hasta 3 Hacer
		Para  j=0 Hasta  4 Hacer
			mat(i, j) = Aleatorio(1, 500)
			Escribir mat(i, j) " " Sin Saltar
		FinPara
		Escribir " "
	FinPara
	Mientras op <> Minusculas("s") Hacer
		Escribir "----------------------------"
		Escribir " Que desea ver "
		Escribir "a - Ventas por zona "
		Escribir "b - ventas por vendedor "
		Escribir "c - ventas totales "
		Escribir "s - salir "
		Escribir "----------------------------"
		Leer op
		Segun Minusculas(op) Hacer
			"a":
				Mientras opZ == " " Hacer
					Escribir "----------------------"
					Escribir "Que zona desea ver "
					Escribir "n -Zona Norte"
					Escribir "s -Zona sur"
					Escribir "e -Zona Este"
					Escribir "o -Zona Oeste"
					Escribir "c -Zona Centro"
					Escribir "----------------------"
					Leer opZ
					Segun Minusculas(opZ) Hacer
						"n":
							n=1
						"s":
							n=2
						"e":
							n=3
						"o":
							n=4
						"c":
							n=5
						De Otro Modo:
							Escribir "La opción ingresada es incorrecta"
					Fin Segun
					op=" "
				Fin Mientras
				
				Escribir "La venta en Zona " opZ " fue de $ " porZona(mat, n)
				opZ=" "
			"b":
				Mientras opV == " " Hacer
					Escribir "----------------------"
					Escribir "Que Vendedor quiere ver"
					Escribir "1"
					Escribir "2"
					Escribir "3"
					Escribir "4"
					Escribir "----------------------"
					Leer opV
					Segun Minusculas(opV) Hacer
						"1":
							n=0
						"2":
							n=1
						"3":
							n=2
						"4":
							n=3
						De Otro Modo:
							Escribir "La opción ingresada es incorrecta"
					Fin Segun
					op=" "
				Fin Mientras
				Escribir n
				Escribir "El total de ventas del vendedor "  "fue de $ " porVendedor(mat, n)
				opV=" "
				
			"c":
				Escribir "La venta total es $ " ventTotal(mat)
			
		Fin Segun
	Fin Mientras
	
FinAlgoritmo

Funcion retorno <- porZona ( mat, n )
	Definir retorno, i , tot Como Real
	tot =0
	Para i=0 Hasta 3 Hacer
		tot = tot + mat(i, n-1)
	FinPara
	retorno = tot
Fin Funcion

Funcion retorno <- porVendedor ( mat, n )
	Definir retorno, i , tot Como Real
	tot =0
	Para i=0 Hasta 4 Hacer
		tot = tot + mat(n, i)
	FinPara
	retorno = tot
Fin Funcion

Funcion retorno <- ventTotal ( mat )
	Definir retorno, i , j, tot Como Real
	tot =0
	Para i=0 Hasta 3 Hacer
		Para  j=0 Hasta  4 Hacer
			tot = tot + mat(i, j)
		FinPara
	FinPara
	retorno = tot
Fin Funcion