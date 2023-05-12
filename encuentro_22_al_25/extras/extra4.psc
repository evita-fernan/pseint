//Realizar un programa que calcule la multiplicación de dos matrices de enteros de 3x3.
//Inicialice las matrices para evitar el ingreso de datos por teclado.


Algoritmo extra4
	
	Definir M, N Como Entero
	
	M = 3
	N = 3
	
	Definir matriz1, matriz2, matrizResultante Como Entero
	Dimension matriz1(M, N)
	Dimension matriz2(M, N)
	Dimension matrizResultante(M, N)
	
	completarMatrices(matriz1, matriz2, M, N)
	
	Escribir "Los valores de la matriz 1 aleatoria son los siguientes: "
	imprimirMatriz(matriz1, M, N)
	
	Escribir "Los valores de la matriz 2 aleatoria son los siguientes: "
	imprimirMatriz(matriz2, M, N)
	
	multiplicarMatrices(matriz1, matriz2, matrizResultante, M, N)
	
	Escribir "Los valores de la matriz resultante de la multiplicacion son los siguientes: "
	imprimirMatriz(matrizResultante, M, N)
	
FinAlgoritmo

SubProceso completarMatrices(matriz1, matriz2, m, N)
	Definir i, j Como Entero
	
	Para i=0 hasta M-1
		Para j=0 hasta N-1
			matriz1[i,j] = Aleatorio(0,5)
			matriz2[i,j] = Aleatorio(0,5)
		FinPara
	FinPara
	
FinSubProceso

SubProceso imprimirMatriz(matriz,  M, N)
	Definir i,j Como Entero

	Para i=0 hasta M-1
		Para j=0 hasta N-1
			Escribir matriz(i,j) " " Sin Saltar
		FinPara
		Escribir ""
	FinPara
	
FinSubProceso

SubProceso 	multiplicarMatrices(matriz1, matriz2, matrizResultante, M, N)
	
	Definir i, j, k, suma Como Entero
	
	Para i=0 hasta M-1
		Para j=0 hasta N-1
			suma = 0
			Para k=0 Hasta N-1
				suma = suma +  matriz1[i,k] * matriz2[k,j]
			FinPara
			matrizResultante[i,j] = suma
		FinPara
	FinPara
	
FinSubProceso
	