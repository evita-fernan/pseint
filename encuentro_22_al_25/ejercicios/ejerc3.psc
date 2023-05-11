//Dada una matriz de orden n * m (donde n y m son valores ingresados por el usuario) realizar
//un subprograma que llene la matriz de numeros aleatorios. Despues, crearemos otro
//subprograma que calcule y muestre la suma de los elementos de la matriz. Mostrar la matriz y
//los resultados por pantalla.

Algoritmo ejerc3
	
	Definir M, N Como Entero
	
	Escribir "Ingrese la cardinalidad de la matriz a completar de forma aleatoria, indicando M (filas) y N (columnas)"
	Leer M, N
	
	Definir matriz Como Real
	Dimension matriz(M,N)
	
	completarMatriz(matriz, M, N)
	imprimirMatriz(matriz, M, N)
	sumarElementos(matriz, M, N)
	
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

SubProceso sumarElementos(matriz, M, N)
	
	Definir i, j Como Entero
	Definir suma Como Real
	
	suma = 0
	
	Para i=0 hasta M-1
		Para j=0 hasta N-1
			suma = suma + matriz[i,j]
		FinPara
	FinPara
	
	Escribir "La suma de todos los elementos de la matriz aleatoria es: " suma
	
FinSubProceso


	