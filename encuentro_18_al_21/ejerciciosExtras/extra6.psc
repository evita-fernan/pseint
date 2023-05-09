//Crear una funcion que devuelva la diferencia que hay entre el valor mas chico de un arreglo y
//su valor mas grande.

Algoritmo extra6
	
	Definir vector, n, i Como Real
	
	Escribir "Ingrese el tamanio del arreglo"
	Leer n
	
	
	Dimension vector[n]
	
	Para i=0 Hasta n-1 Con Paso 1 Hacer
		vector[i] = Aleatorio(0,50)
	Fin Para
	
	Escribir "El vector es el siguiente: "
	
	Para i<-0 Hasta n-1 Con Paso 1 Hacer
		
		Si i = 0 Entonces
			Escribir "[ " vector[i] Sin Saltar
		Sino
			Escribir ", " vector[i] Sin Saltar
		FinSi
	Fin Para
	
	Escribir " ]"
	
	menorMayor(vector, n)
	
FinAlgoritmo

SubProceso menorMayor (vector, n Por Referencia)
	
	Definir j, min, max, diferencia Como Entero
	
	Para j<-0 Hasta n-1 Con Paso 1 Hacer
		
		Si j = 0 Entonces
			min = vector[j]
			max = vector[j]
			
		SiNo
			Si vector[j] < min Entonces
				min = vector[j]
			FinSi
			
			Si vector[j] > max Entonces
				max = vector[j]
			FinSi
		FinSi
	Fin Para
		
		diferencia = max - min
		
		Escribir "La diferencia entre el numero menor del arreglo " min " y el mayor " max " es: " diferencia
		
FinSubProceso
