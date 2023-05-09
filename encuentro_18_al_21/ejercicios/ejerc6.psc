Algoritmo ejerc6
	
	Definir vector, frase, respuesta, nuevoCaracter Como Caracter
	Definir n, qty, posicion Como Entero
	
	n = 20
	
	Dimension vector[n]
	
	Escribir "Ingrese una frase"
	Leer frase
	
	qty = Longitud(frase)
	
	completarVector(vector, qty, n, frase)
	
	Escribir "�Desea ingresar un caracter m�s al vector?"
	Leer respuesta
	
	respuesta = Mayusculas(respuesta)
	
	Si respuesta = "SI" Entonces
		
		Escribir "¿Que caracter desea ingresar?"
		Leer nuevoCaracter
		
		Escribir "¿En que posicion desea ingresar el caracter?"
		Leer posicion
		
		ingresarCaracter(vector, nuevoCaracter, posicion)
		
	SiNo
		
		Escribir "Escogio no ingresar ningun caracter nuevo" 
		
	FinSi
	
FinAlgoritmo

SubProceso completarVector(vector, qty, n, frase Por Referencia)
	
	Definir i Como Entero
	
	Si qty > n Entonces
		
		Escribir "Ingrese una frase con 20 caracteres o menos"
		
	SiNo
		
		Para i=0 Hasta qty-1 Con Paso 1 Hacer
			
			vector[i] = SubCadena(frase,i,i)
			
		FinPara
		
	FinSi
	
	Para i<-0 Hasta qty-1 Con Paso 1 Hacer
		
		Si i = 0 Entonces
			Escribir "[ " vector[i] Sin Saltar
		Sino
			Escribir ", " vector[i] Sin Saltar
		FinSi
	Fin Para
	
	Escribir " ]"
	
FinSubProceso

SubProceso ingresarCaracter(vector,nuevoCaracter, posicion Por Referencia)
	
	Si vector[posicion] = "" o vector[posicion] = " " Entonces
		
		vector[posicion] = nuevoCaracter
		
		Escribir "Se ha ingresado el nuevo caracter correctamente"
		
	SiNo
		
		Escribir "No se puede ingresar el caracter indicado en la posicion escogida dado que dicho espacio esta ocupado"
		
	FinSi
	
FinSubProceso
