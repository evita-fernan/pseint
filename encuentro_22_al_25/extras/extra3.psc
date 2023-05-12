//Realizar un programa que cree una matriz de 5x15 y deberemos llenar la matriz de unos y
//ceros. Llenando el marco o la delimitación externa de la matriz de unos y la parte interna de
//ceros.
//Por ejemplo, nuestro matriz final deberia verse asi:

Algoritmo extra3
	
	Definir M, N Como Entero
	
	M = 5
	N = 15
	
	Definir matriz Como Entero
	Dimension matriz(M, N)
	
	completarMatriz(matriz, M, N)
	imprimirMatriz(matriz, M, N)
	
FinAlgoritmo

SubProceso completarMatriz(matriz, M, N)
	
	Definir i, j Como Entero
	
	Para i=0 hasta M-1
		Para j=0 hasta N-1
			
			Si i=0 o i=4 Entonces
				matriz[i,j] = 1
			FinSi
			
			Si i=1 o i=2 o i=3 Entonces
				Si j=0 o j=14 Entonces
					matriz[i,j] = 1
				SiNo
					matriz[i,j] = 0
				FinSi
			FinSi
			
		FinPara
	FinPara
	
FinSubProceso

SubProceso imprimirMatriz(matriz, M, N)
	
	Definir i,j Como Entero
	Escribir "Los valores de la matriz generada son los siguientes: "
	
	Para i=0 hasta M-1
		Para j=0 hasta N-1
			Escribir matriz(i,j) " " Sin Saltar
		FinPara
		Escribir ""
	FinPara
	
FinSubProceso
