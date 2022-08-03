SubProceso  mostrarArrays(longitud_nombres, nombres, TAMANIO)
	Definir i Como Entero
    Para i<-0 Hasta TAMANIO Con Paso 1 Hacer
        escribir "La longitud del nombre ",nombres[i]," es de ",longitud_nombres[i]
    Fin Para
	
Fin SubProceso


Algoritmo Ejercicio3Extra
	Definir longitud_nombres como entero
    Definir nombres como cadena
    Definir TAMANIO, i como entero
	escribir "Introduce el tamaño de los arrays"
    leer TAMANIO    
	
	Dimension longitud_nombres[TAMANIO]
    Dimension nombres[TAMANIO]
	Para i<-0 Hasta TAMANIO Con Paso 1 Hacer
	escribir "Introduce un nombre para la posicion ",i      
	leer nombres[i]
	longitud_nombres[i]<-Longitud(nombres[i])
	mostrarArrays(longitud_nombres, nombres, TAMANIO)
Fin Para    
FinAlgoritmo
