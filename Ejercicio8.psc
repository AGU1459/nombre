Algoritmo Ejercicio8
//	Realizar un programa que rellene una matriz de 3x3 con 9 valores ingresados por el usuario y
	//	los muestre por pantalla.
	Definir matriz,fila, columna Como Entero
	Dimension matriz[4,4];
    Escribir " "
	Escribir "Realiazar"
	Escribir " "
    
    Para fila<-1 Hasta 3 Con Paso 1 Hacer
		para columna<- 1 Hasta 3 con paso 1 Hacer 
        
            Escribir "Ingrese la celda" " ", fila, " ", columna
            Leer matriz[fila, columna]
        Fin Para
    FinPara
	
    Para fila<-1 Hasta 3 Con Paso 1 Hacer            
        
        Para columna<-1 Hasta 3 Con Paso 1 Hacer
            Escribir Sin Saltar matriz[fila,columna], " ";
        Fin Para        
    FinPara     
	Escribir " "

FinAlgoritmo
