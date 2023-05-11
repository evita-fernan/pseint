//Rellenar en un subproceso una matriz cuadrada con números aleatorios salvo en la diagonal
//principal, la cual debe rellenarse con ceros. Una vez llena la matriz debe generar otro
//subproceso para imprimir la matriz.

Algoritmo ejerc4
	
	Definir M, N Como Entero
	Definir matriz Como Real
	
	M = 3
	N = 3
	
	Dimension matriz(M, N)
	
	completarMatrizCuadrada(matriz, M, N)
	imprimirMatriz(matriz, M, N)
	
FinAlgoritmo

SubProceso completarMatrizCuadrada(matriz, M, N)
	
	Definir i, j Como Entero
	
	Para i=0 hasta M-1
		Para j=0 hasta N-1
			Si i <> j Entonces
				matriz[i,j] = Aleatorio(0,20)
			SiNo
				matriz[i,j] = 0
			FinSi
		FinPara
	FinPara
	
FinSubProceso

SubProceso imprimirMatriz(matriz, M, N)
	
	Definir i,j Como Entero
	
	Escribir "Los valores de la matriz son los siguientes: "
	
	Para i=0 hasta M-1
		Para j=0 hasta N-1
			Escribir matriz[i,j] " " Sin Saltar
		FinPara
		Escribir ""
	FinPara
	
FinSubProceso
	