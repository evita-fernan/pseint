//Realizar un programa que rellene una matriz de 3x3 con 9 valores
//ingresados por el usuario y los muestre por pantalla.

Algoritmo ejerc1
	
	Definir M,N,i,j Como Entero
	
	M = 3
	N = 3
	
	Definir matriz Como Real
	
	Dimension matriz(M,N)	

	Escribir "El tamanio de la matriz es de 3x3"
	
	Para i=0 hasta M-1
		Para j=0 hasta N-1
			Escribir "Ingrese el valor del elemento en la posicion [", i, ",", j "]" sin saltar
			Leer matriz(i,j)
		FinPara
		
	FinPara
	
	imprimirMatriz(matriz, M,N)
	
FinAlgoritmo

SubProceso imprimirMatriz(matriz, M, N)
	
	Definir i,j Como Entero
	
	Escribir "La matriz con los valores ingresados es la siguiente: "
	
	Para i=0 hasta M-1
		Para j=0 hasta N-1
			Escribir matriz(i,j) " " Sin Saltar
		FinPara
		Escribir ""
	FinPara
	
FinSubProceso
