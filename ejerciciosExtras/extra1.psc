Algoritmo rellenar
	
	Definir vector1, vector2, n Como real
	Definir i Como Entero
	
	n=3
	
	Dimension vector1[n], vector2[n]
	
	Para i<-0 Hasta n-1 Con Paso 1 Hacer
		vector1[i] = Aleatorio[0,15]
		vector2[i] = Aleatorio[0,15]
		Escribir vector1[i]
	Fin Para
	
	Escribir "El vector 1 es el siguiente: "
	
	Para i<-0 Hasta n-1 Con Paso 1 Hacer
		
		Si i = 0 Entonces
			Escribir "[ " vector1[i] Sin Saltar
		Sino
			Escribir ", " vector1[i] Sin Saltar
		FinSi
	Fin Para
	
	Escribir " ]"
	
	Escribir "El vector 2 es el siguiente: "
	
	Para i<-0 Hasta n-1 Con Paso 1 Hacer
		
		Si i = 0 Entonces
			Escribir "[ " vector2[i] Sin Saltar
		Sino
			Escribir ", " vector2[i] Sin Saltar
		FinSi
	Fin Para
	
	Escribir " ]"

	
FinAlgoritmo
