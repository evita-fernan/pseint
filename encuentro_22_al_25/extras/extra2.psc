//Crear una matriz de orden n * m (donde n y m son valores ingresados por el usuario), llenarla
//con números aleatorios entre 1 y 100 y mostrar su traspuesta.
//¿Que es una matriz transpuesta?
//La matriz traspuesta de una matriz A se denota por B y se obtiene cambiando sus filas por
//columnas (o viceversa).

//Ejemplo: Obsérvese, por ejemplo, que la primera fila de la matriz A es (1,0,4). 
//Esta fila es la primera columna de su matriz traspuesta.

Algoritmo extra2
	
	Definir M, N Como Entero
	
	Escribir "Ingrese el tamanio de la matriz indicando primero el numero de filas y luego el de columnas"
	Leer M, N
	
	Definir matriz, matrizT Como Real
	Dimension matriz(M,N)
	Dimension matrizT(N,M)
	
	completarMatriz(matriz, M, N)
	imprimirMatriz(matriz, M, N)
	transponer(matriz, matrizT, M, N)
	imprimirMatriz(matrizT, M, N)
	
FinAlgoritmo

SubProceso completarMatriz(matriz, M, N)
	
	Definir i, j Como Entero
	
	Para i=0 hasta M-1
		Para j=0 hasta N-1
			matriz[i,j] = Aleatorio(0,100)
		FinPara
	FinPara
	
FinSubProceso

SubProceso imprimirMatriz(matriz, M, N)
	
	Definir i,j Como Entero
	Escribir "Los valores de la matriz pasada por parametro son los siguientes: "
	
	Para i=0 hasta M-1
		Para j=0 hasta N-1
			Escribir matriz(i,j) " " Sin Saltar
		FinPara
		Escribir ""
	FinPara
	
FinSubProceso

SubProceso transponer(matriz, matrizT, M, N)
	
	Definir i, j Como Entero
	
	Para i=0 hasta M-1
		para j=0 hasta N-1
			matrizT[j,i] = matriz[i,j]
		FinPara
	FinPara
	
	
FinSubProceso










	