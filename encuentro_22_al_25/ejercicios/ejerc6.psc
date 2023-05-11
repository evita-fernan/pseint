//Una matriz mágica es una matriz cuadrada (tiene igual número de filas que de columnas) que
//tiene como propiedad especial que la suma de las filas, las columnas y las diagonales es igual.
// Por ejemplo:
//	En la matriz de ejemplo las sumas son siempre 15. Considere el problema de construir un
//	algoritmo que compruebe si una matriz de datos enteros es mágica o no, y en caso de que
//	sea mágica escribir la suma. Además, el programa deberá comprobar que los números
//	introducidos son correctos, es decir, están entre el 1 y el 9. El usuario ingresa el tamaño de la
//	matriz que no debe superar orden igual a 10.


Algoritmo ejerc6
	
	Definir M, N Como Entero
	
	Repetir
		Escribir "Indique el numero de filas (sera el mismo para las columnas)"
		Leer M
	Mientras Que M > 10
	
	N = M
	
	Definir matriz Como Entero
	Dimension matriz(M, N)
	
	completarMatriz(matriz, M, N)
	imprimirMatriz(matriz, M, N)
	magicaono(matriz, M, N)
	
FinAlgoritmo

SubProceso completarMatriz(matriz, M, N)
	
	Definir i, j, num Como Entero
	
	Para i=0 hasta M-1
		Para j=0 hasta N-1
			
			Repetir
				
				Escribir "Ingrese un numero que se encuentre entre 1 y 9, inclusive"
				Leer num
				
				Si num >= 1 Y num <= 9 Entonces
					matriz[i,j] = num
				SiNo
					Escribir "Numero no correcto"
				FinSi
				
			Mientras Que num < 1 O num > 9
			
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

SubProceso magicaono(matriz, M, N)
	
	Definir i, j, sumFila, sumCol, sumDiag, sumAntidig Como Entero
	
	sumDiag = 0
	sumAntidig = 0


	Para i=0 hasta M-1
		sumFila = 0
		sumCol = 0
		
		Para j=0 hasta N-1
			sumFila = sumFila + matriz[i,j]
			sumCol = sumCol + matriz[j,i]
			Si i=j Entonces
				sumDiag = sumDiag + matriz[i,i]
				sumAntidig = sumAntidig + matriz[i, N-1-i]
			FinSi	
		FinPara
		
		Escribir sumFila, sumCol
		
	FinPara
	
	si sumFila <> sumCol o sumFila <> sumDiag o sumAntidig <> sumDiag o sumCol <> sumAntidig Entonces
		
		Escribir "La matriz no es magica"
		
	SiNo
		
		Escribir "La matriz es magica y la suma de sus filas, columnas, diagonal y antidiagonal es: "
		Escribir "La suma diagonal es: " sumDiag
		Escribir "La suma antidiagonal es: " sumAntidig
		Escribir "La suma fila es: " sumFila
		Escribir "La suma columna es: " sumCol
		
	FinSi
	
FinSubProceso

