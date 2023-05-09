//Realizar un programa que rellene un vector de tamanio N, con valores ingresados por el
//usuario. A continuacion, se debe buscar un elemento dentro del arreglo (el numero a buscar
//tambien debe ser ingresado por el usuario). El programa debe indicar la posicion donde se
//encuentra el valor. En caso que el numero se encuentre repetido dentro del arreglo se deben
//imprimir todas las posiciones donde se encuentra ese valor.
//Finalmente, en caso que el numero a buscar no esta adentro del arreglo se debe mostrar un
//mensaje.

Algoritmo ejerc3
	
	Definir vector, n, x, i, cont como enteros
	
	Escribir "¿Cual es el tamanio del vector que desea completar?"
	leer n
	
	Dimension vector[n]
	
	cont = 0
	
	Escribir "Ingrese los numeros a incorporar al vector"
	
	Para i<-0 Hasta n-1 Con Paso 1 Hacer
		leer vector[i]
	Fin Para
	
	Escribir "Ingrese el n�mero que desea buscar en el vector"
	leer x
	
	Para i<-0 Hasta n-1 Con Paso 1 Hacer
		si vector[i] = x
			Escribir "El numero que desea buscar se encuentra en la posicion: " i
			cont = cont +1
		FinSi
		
	Fin Para	
	
	si cont = 0 Entonces
		Escribir "El numero que desea buscar no se encuentra"
	FinSi
	
FinAlgoritmo


//Algoritmo arreglosEjer3
//	
//	bu
//	
//FinAlgoritmo
//
//
//SubProceso bu ()
//	
//	Definir vector,conta,i,r,busque Como Entero
//	escribir "Ingrese el rango del vector: "
//	Leer r
//	Dimension vector(r)
//	
//	Escribir "Ingrese " ,r, " valores numericos:"
//	para i<-0 hasta r-1 Hacer
//		Leer vector[i]
//	FinPara
//	
//	Escribir "Ingrese el valor que desea buscar: "
//	Leer busque
//	
//	conta = 0
//	para i<-0 hasta r-1 Hacer
//		si vector(i) == busque
//			Escribir "El numero a buscar: ",vector(i)," es igual a ",busque, " y esta en la posicion ",i
//			conta = conta + 1
//		FinSi
//	FinPara
//	
//	si conta = 0 Entonces
//		Escribir "el numero a buscar no est� adentro del arreglo"
//	FinSi
//FinSubProceso
