Algoritmo ejerc2
	
	Definir valores, i como real
	
	Dimension valores[3]

	Escribir "Ingrese 10 números reales"
	
	Para i<-0 Hasta 2 Con Paso 1 Hacer
		leer valores[i]
	Fin Para
	
//	Para i<-0 Hasta 2 Con Paso 1 Hacer
//		Escribir valores[i]
//	Fin Para
	
	suma(valores)
	
	resta(valores)
	
	multiplicacion(valores)
	
FinAlgoritmo

SubProceso suma(valores por Referencia)
	
	definir j, sum Como Entero
	
	sum = 0
	
	Para j<-0 Hasta 2 Con Paso 1 Hacer
		sum = sum + valores[j]
	Fin Para
	
	Escribir "La suma de todos los elementos del arreglo es: " sum
	
FinSubProceso

SubProceso resta(valores por Referencia)
	
	definir j, rest Como Entero
	
	rest = valores[0]
	
	Para j<-1 Hasta 2 Con Paso 1 Hacer
		
		rest = rest - valores[j]
		
	Fin Para
	
	Escribir "La resta de todos los elementos del arreglo es: " rest
	
FinSubProceso

SubProceso multiplicacion(valores por Referencia)
	
	definir j, multi Como Entero
	
	multi = 1
	
	Para j<-0 Hasta 2 Con Paso 1 Hacer
		
		multi = multi*valores[j]
		
	Fin Para
	
	Escribir "La multiplicación de todos los elementos del arreglo es: " multi
	
FinSubProceso