//Crear una matriz que contenga 3 columnas y la cantidad filas que decida el usuario. Las dos
//primeras columnas contendrán valores enteros ingresados por el usuario y en la 3 columna se
//deberá almacenar el resultado de sumar el número de la primera y segunda columna. Mostrar
//la matriz de la siguiente forma:

Algoritmo extra5
	
	Definir M, N como entero
	
	N = 3
	
	Escribir "Ingrese la cantidad de filas. Recuerde que las columnas son fijas y seran 3"
	Leer M
	
	Definir matriz Como Entero
	Dimension matriz(M, N)
	
	completarMatriz(matriz, M, N)
	
	imprimirMatriz(matriz,  M, N)
	
FinAlgoritmo

SubProceso completarMatriz(matriz, M, N)
	
	Definir i, j, num Como Entero
	
		Para i=0 hasta M-1
			Para j=0 hasta N-1
				Si j <> N-1 Entonces
					Escribir "Ingrese un numero"
					Leer num
					matriz[i,j] = num
				SiNo
					matriz[i,j] = matriz[i,j-1] + matriz[i, j-2]
				FinSi
			FinPara
		FinPara
	
FinSubProceso

SubProceso imprimirMatriz(matriz,  M, N)
	Definir i,j Como Entero
	
	Para i=0 hasta M-1
			Escribir matriz(i,0) " + " matriz(i, 1) " = " matriz(i, 2)
		Escribir ""
	FinPara
	
FinSubProceso
