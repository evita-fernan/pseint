//Realizar un programa que rellene de números aleatorios una matriz a través de un
//subprograma y generar otro subprograma que muestre por pantalla la matriz final.

Algoritmo extra1
	
	Definir M, N, num Como Entero
	
	M = 3
	N = 3
	
	Definir matriz Como Real
	Dimension matriz(M,N)
	
	completarMatriz(matriz, M, N)
	imprimirMatriz(matriz, M, N)

FinAlgoritmo

SubProceso completarMatriz(matriz, M, N)
	
	Definir i, j Como Entero
	
	Para i=0 hasta M-1
		Para j=0 hasta N-1
			matriz[i,j] = Aleatorio(0,50)
		FinPara
	FinPara
	
FinSubProceso

SubProceso imprimirMatriz(matriz, M, N)
	
	Definir i,j Como Entero
	
	Escribir "Los valores de la matriz aleatoria son los siguientes: "
	
	Para i=0 hasta M-1
		Para j=0 hasta N-1
			Escribir matriz(i,j) " " Sin Saltar
		FinPara
		Escribir ""
	FinPara
	
FinSubProceso
