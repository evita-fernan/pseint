Algoritmo ej7
	// Crear un subproceso que rellene dos arreglos de tamanio n, con numeros aleatorios. Despues,
	//  hacer una funcion que reciba los dos arreglos y diga si todos sus valores son iguales o no. La
	//    funcion debe devolver el resultado de esta validacion, para mostrar el mensaje en el
	//    algoritmo. Nota: recordar el uso de las variables de tipo logico.
	
	Definir n, vector1, vector2 Como Real
	escribir "De que tamanio queres que sean tus vectores?"
	leer n 
	Dimension vector1(n), vector2(n)
	relleno(vector1, vector2, n)
	
	escribir igualesOno(vector1, vector2, n)
	
	
FinAlgoritmo

SubProceso relleno(vector1 Por Referencia, vector2 Por Referencia, n)
	Definir i Como Entero
	Para i<-0 Hasta n-1 Con Paso 1 Hacer
		vector1[i] = Aleatorio[0, 5]
		vector2[i] = Aleatorio[0, 5]
	Fin Para
FinSubProceso

Funcion iguales <- igualesOno ( vector1 Por Referencia, vector2 Por Referencia, n)
	Definir iguales como logico
	Definir contador Como Entero
	iguales = falso
	contador = 0
	Definir i Como Entero
	i=0
	Para i<-0 Hasta n-1 Con Paso 1 Hacer
		Si vector1(i)==vector2(i) Entonces
			iguales = Verdadero 
			contador= contador + 1
		SiNo
			iguales = falso
		Fin Si
		Escribir "¿Los valores del arreglo en posicion " i+1 " son iguales? "
		Escribir iguales
	Fin Para
	si contador == n Entonces
		iguales = Verdadero
	FinSi
	Escribir "¿Los arreglos son iguales? "
Fin Funcion