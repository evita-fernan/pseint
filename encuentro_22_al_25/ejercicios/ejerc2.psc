//Escribir un programa que realice la búsqueda lineal de un número entero ingresado por el
//usuario en una matriz de 5x5, llena de números aleatorios y devuelva por pantalla las
//coordenadas donde se encuentra el valor, es decir en que fila y columna se encuentra. En
//caso de no encontrar el valor dentro de la matriz se debe mostrar un mensaje.

Algoritmo ejerc2
	
	Definir M, N, num Como Entero
	
	M = 3
	N = 3
	
	Definir matriz Como Real
	Dimension matriz(M,N)
	
	completarMatriz(matriz, M, N)
	imprimirMatriz(matriz, M, N)
	
	Escribir "Ingrese un numero entero que desee buscar dentro de la matriz de cardinalidad 5 x 5"
	Leer num
	
	buscarElemento(matriz, M, N, num)
	
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

SubProceso buscarElemento(matriz, M, N, num)
	
	Definir i,j Como Entero
	Definir encontrado como logico
	
	encontrado = Falso
	
	Para i=0 hasta M-1
		Para j=0 hasta N-1
			Si matriz[i,j] = num Entonces
				Escribir "El numero ingresado se encuentra en la posicion : [ ", i, ", " j " ] de la matriz aleatoria"
				encontrado = Verdadero
			FinSi
		FinPara
	FinPara
	
	Si encontrado = Falso Entonces
		Escribir "El numero ingresado no se encuentra en la matriz aleatoria"
	FinSi
	
FinSubProceso
	