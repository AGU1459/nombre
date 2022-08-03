//Disponemos de un vector unidimensional de 20 elementos de tipo carácter. Se pide
//desarrollar un programa que:
//	a) Pida una frase al usuario y luego ingrese la frase dentro del arreglo letra por letra.
//Ayuda: utilizar la función Subcadena de PSeInt.
//	b) Una vez completado lo anterior, pedirle al usuario un carácter cualquiera y una
//	posición dentro del arreglo, y el programa debe intentar ingresar el carácter en la
//	posición indicada, si es que hay lugar (es decir la posición está vacía o es un espacio
//	en blanco). De ser posible debe mostrar el vector con la frase y el carácter ingresado,
//	de lo contrario debe darle un mensaje al usuario de que esa posición estaba ocupada.
//Por ejemplo, suponiendo la siguiente frase y los subíndices del vector:
//	H o l a m u n d o c r u e l !
//	0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19
//Si se desea ingresar el carácter "%" en la posición 10, entonces el resultado sería:
//		H o l a m u n d o % c r u e l !
//		0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19

Algoritmo Ejercicio6_Guia4
	Definir i, pos Como Entero;
	Definir array, frase, char como cadena;
	Dimension array[20];
	
	Escribir "Ingresa una frase: ";
	Leer frase;
	
	Mientras Longitud(frase) > 20 Hacer
		Escribir "Debe ingresar una frase de 20 caracteres como máximo: "
		Escribir "Ingrese nuevamente una frase: ";
		Leer frase;
		
	Fin Mientras
	
	Para i=0 Hasta 19 Con Paso 1 Hacer
		array[i] = Subcadena(frase, i, i);
	Fin Para
	
	
	Escribir "Ingresa un caracter: ";
	Leer char;
	Escribir "Ingresa la posicion en la que desea insertar el caracter: ";
	Leer pos;
	
	Si array[pos] == "" O array[pos] == " " Entonces
		array[pos] = char;
		
		Para i=0 Hasta 19 Con Paso 1 Hacer
			Escribir sin saltar array[i];
		Fin Para
	SiNo
		Escribir "La posicion ingresada estaba ocupada";
	Fin Si
	
	Escribir "";
FinAlgoritmo
