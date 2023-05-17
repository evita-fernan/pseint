// 1. subprograma inicializarMatriz(matriz, M, N)
// 2. subprograma imprimirMatriz(matriz, M, N)
// 3. subprograma agregarPalabra(matriz, M, palabra) *M: fila en donde se agregara la palabra. Descomponer la palabra y agregarla en la matriz
// 4. subprograma buscarR(matriz, M) *M: fila en donde buscara la letra R. Debe comparar cada letra de la fila indicada hasta que encuentre la primera letra R. Ahí debedevolvernos la posición de R.
// 5. subprograma acomodarPalabra(matriz) Se puede llamar a buscarR para saber cuantos espacios hay que mover las palabras. Completar con * los espacios que queden en blanco.

Algoritmo desafio
	
	Definir M, N, fila, i como Entero
	Definir palabra como Caracter
	
	M=9
	n=12
	
	Definir matriz Como Caracter
	Dimension matriz[M,N]
	
	inicializarMatriz(matriz,M,N)
	
	imprimirMatriz(matriz,M,N)
	
	Para i=0 Hasta 8
		
		Segun i Hacer
			0:
				palabra="VECTOR"
			1:
				palabra="MATRIX"
			2:
				palabra="PROGRAMA"
			3:
				palabra="SUBPROGRAMA"
			4:
				palabra="SUBPROCESO"
			5:
				palabra="VARIABLE"
			6:
				palabra="ENTERO"
			7:
				palabra="PARA"
			8:
				palabra="MIENTRAS"
		Fin Segun
		
		agregarPalabra(matriz, palabra, i)
		
	Fin Para
	
	imprimirMatriz(matriz, M, N)
	
	Para i=0 hasta M
		
		Escribir buscarR(matriz, i)
		
	FinPara
	
	acomodarPalabra(matriz)
	
FinAlgoritmo

SubProceso inicializarMatriz(matriz, M, N)
	
	Definir i, j Como Entero
	
	Para i=0 hasta M-1 
		Para j=0 hasta N-1 
			
			matriz[i,j]="*"
			
		FinPara
	FinPara
FinSubProceso


SubProceso imprimirMatriz(matriz, M, N)
	
	Definir i, j Como Entero
	
	Para i=0 hasta M-1 
		Para j=0 hasta N-1 
			
			Escribir Sin Saltar " ", matriz[i,j]," "
			
		FinPara
		
		Escribir " "
		
	FinPara
	
	Escribir " "
	
FinSubProceso

SubProceso agregarPalabra(matriz,palabra, fila)
	
	Definir i, j Como Entero
	
	Para i=0 hasta longitud(palabra)-1
		
		matriz(fila,i) = SubCadena(palabra,i,i)
		
	FinPara
	
FinSubProceso

Funcion posR <- buscarR(matriz, fila)
	
	Definir i, posR Como Entero
	
	posR=0
	
	Para i=0 hasta 11
		
		Si matriz(fila,i)=="R" y posR==0 Entonces
			
			posR=i
			
		Fin Si
		
	FinPara
	
	//	Escribir "en la fila ", fila," la R está en "
Fin Funcion

subproceso acomodarPalabra(matriz)
	
	Definir fila,i,j como Entero
	Definir matriz2 como Caracter
	
	Dimension matriz2[9,12]
	
	Para i=0 hasta 8
		Para j=0 hasta 11
			
			matriz2(i,j)=matriz(i,j)
			
		FinPara
	FinPara
	
	Para i=0 hasta 8
		
		fila= (5-buscarR(matriz, i))
		
		Para j=0 Hasta 11
			
			Si j>=fila Entonces
				
				matriz(i,j)=matriz2(i,j-(fila))
				
			Sino	
				
				matriz(i,j)="*"
				
			Fin Si
			
		Fin Para
		
	FinPara
	
	imprimirMatriz(matriz,9,12)
	
FinSubProceso