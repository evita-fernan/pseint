//Realizar un programa que rellene un vector de tamanio N, con valores ingresados por el
//usuario y muestre por pantalla el promedio de la suma de todos los valores ingresados.

Algoritmo extra2
	
	Definir vector, n, suma, promedio Como Real
	Definir i Como Entero
	
	suma = 0
	promedio = 1
	
	Escribir "Ingrese el tamanio del vector"
	Leer n
	
	Dimension vector[n]
	
	Para i<-0 Hasta n-1 Con Paso 1 Hacer
		Escribir "ingrese un n�mero para completar el vector"
		Leer vector[i]
		suma = suma + vector[i]
	Fin Para
	
	promedio = suma/n
	
	Escribir "El promedio de la suma de todos los elementos del vector es: " promedio
	
FinAlgoritmo
