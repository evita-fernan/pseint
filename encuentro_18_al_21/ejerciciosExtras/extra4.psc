//Crear un vector que contenga 100 notas de 100 supuestos estudiantes, con valores entre 0 y
//20 generadas aleatoriamente mediante el uso de la función azar() o aleatorio() de PseInt.
//Luego, de acuerdo a las notas contenidas, el programa debe indicar cuántos estudiantes son:
//	a) Deficientes 0-5
//	b) Regulares 6-10
//	c) Buenos 11-15
//	d) Excelentes 16-20


Algoritmo extra4
	
	Definir vector, n, deficientes, regulares, buenos, excelentes como real
	Definir i Como Entero
	
	n = 10
	deficientes = 0
	regulares= 0
	buenos = 0
	excelentes = 0
	
	Dimension vector[n]
	
	Para i=0 Hasta n-1 con Paso 1 Hacer
		
		vector[i] = Aleatorio(0,20)
		Escribir vector[i]
		
		Si vector[i] >= 0 y vector[i]<= 5 Entonces
			deficientes = deficientes + 1
			Escribir "Soy deficiente " vector[i] 
		FinSi
		
		si vector[i] >= 6 y vector[i]<= 10 Entonces
			regulares = regulares + 1
			Escribir "Soy regular " vector[i] 
		FinSi
		
		si vector[i] >= 11 y vector[i]<= 15 Entonces
			buenos = buenos + 1
			Escribir "Soy bueno " vector[i] 
		FinSi
		
		si vector[i] >= 16 y vector[i]<= 20 Entonces
			excelentes = excelentes + 1
			Escribir "Soy excelente " vector[i] 
		FinSi
		
	FinPara
	
	Escribir "La cantidad de alumnos con notas deficientes son: " deficientes
	Escribir "La cantidad de alumnos con notas regulares son: " regulares
	Escribir "La cantidad de alumnos con notas buenas son: " buenos
	Escribir "La cantidad de alumnos con notas excelentes son: " excelentes
	
	
FinAlgoritmo
