//Rellenar una matriz, de 3 x 3, con una palabra de 9 de longitud, pedida por el usuario,
//encontrando la manera de que la frase se muestre de manera continua en la matriz.
//Nota: recordar el uso de la función Subcadena().

Algoritmo ejerc5
	
	Definir M, N Como Entero
	
	M = 3
	N = 3
	
	Definir matriz, palabra Como Caracter
	Dimension matriz(M, N)
	
	Repetir
		Escribir "Ingrese una palabra que tenga 9 caracteres"
		Leer palabra
		
		palabra = Mayusculas(palabra)
		
		Si Longitud(palabra) = 9
			completarMatriz(matriz, M, N, palabra)
			imprimirMatriz(matriz, M, N)
			
		SiNo
			Escribir "La palabra ingresada no cumple con la condicion de caracteres requeridos"
		FinSi
		
	Mientras Que Longitud(palabra) <> 9
	
	
FinAlgoritmo

SubProceso completarMatriz(matriz, M, N, palabra)
	
	Definir i, j, contador Como Entero
	
	contador = 0
	
	Para i=0 hasta M-1
		Para j=0 hasta N-1
			matriz[i,j] = Subcadena(palabra, contador, contador)
			contador = contador + 1
		FinPara
		
	FinPara
	
FinSubProceso

SubProceso imprimirMatriz(matriz, M, N)
	
	Definir i,j Como Entero
	
	//	Escribir "Los valores de la matriz son los siguientes: "
	
	Para i=0 hasta M-1
		Para j=0 hasta N-1
			Escribir matriz[i,j] " " Sin Saltar
		FinPara
		Escribir ""
	FinPara
	
FinSubProceso