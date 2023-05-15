//Realizar un programa que permita visualizar el resultado del producto de una matriz de
//enteros de 3x3 por un vector de 3 elementos. Los valores de la matriz y el vector pueden
//inicializarse evitando así el ingreso de datos por teclado.


Algoritmo extra6
	
	Definir M, N Como Entero
	
	M = 3
	N = 3
	
	Definir matriz, vectorRes, vector Como Real
	Dimension matriz(M, N)
	Dimension vectorRes(M)
	Dimension vector(M)
	
	completarMatrizYVector(matriz, vector, M, N)
	imprimirMatrizYVector(matriz, vector, M, N)
	multiplicacion(matriz, vector, vectorRes, M, N)
	
FinAlgoritmo

SubProceso completarMatrizYVector(matriz, vector, M, N)
	
	Definir i, j Como Entero
	
	Para i=0 hasta M-1
		
		vector[i] = Aleatorio(0,5)
		
		Para j=0 hasta N-1
			
			matriz[i,j] = Aleatorio(0,10)
			
		FinPara
		
	FinPara
	
FinSubProceso

SubProceso imprimirMatrizYVector(matriz, vector, M, N)
	
	Definir i, j Como Entero
	
	Escribir " ---- Matriz ---- "
	
	Para i=0 hasta M-1
		
		Para j= 0 hasta N-1
			
			Escribir matriz(i,j) " " Sin Saltar
			
		FinPara
		
		Escribir ""
		
	FinPara
	
	Escribir " ---- Vector ---- "
	
	Para i=0 hasta M-1
		
		Escribir vector(i) " "
		
	FinPara
	
	Escribir ""
	
FinSubProceso

SubProceso multiplicacion(matriz, vector, vectorRes, M, N)
	
	Definir i, j, k, suma Como Entero
	
	Para i=0 hasta M-1
		
		Para j=0 hasta N-1
			suma = 0
			
			Para k=0 hasta M-1
				
				suma = suma + matriz[i,k]*vector[k] 
				
			FinPara
			
			vectorRes[i] = suma
			
		FinPara
		
	FinPara
	
	Escribir " ---- Vector Resultante ---- "
	
	Para i=0 hasta M-1
		
		Escribir vectorRes(i) " "
		
	FinPara
	
	Escribir ""
	
FinSubProceso
