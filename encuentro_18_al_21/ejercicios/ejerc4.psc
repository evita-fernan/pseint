Algoritmo ejerc4
	
	Definir option Como Caracter
	Definir valoresA, valoresB, valoresC, n Como Real
	Escribir "Ingrese el tamanio del vector que desea crear"
	Leer n
	
	Dimension valoresA[n]
	Dimension valoresB[n]
	Dimension valoresC[n]
	
	Repetir
		Escribir "***** Escoga una opcion del siguiente menu *****"
		
		Escribir "A. Llenar un vector A de forma aleatoria"
		Escribir "B. Llenar un vector B de forma aleatoria"
		Escribir "C. Llenar un vector C que sera la suma de los vectores A y B"
		Escribir "D. Llenar un vector D que sera la resta de los vectores A y B"
		Escribir "E. ¿Que vector desea visualizar? A, B, C o D"
		Escribir "F. Salir"
		Escribir "Ingrese la letra de la opcion deseada"
		Leer option
		
		option = Mayusculas(option)
		
		Segun option Hacer
			"A":
				Escribir "Ha seleccionado llenar un vector A de forma aleatoria"
				vectorA(valoresA, n) 
			"B":
				Escribir "Ha seleccionado llenar un vector A de forma aleatoria"
				vectorB(valoresB, n)
			"C":
				Escribir "Ha seleccionado llenar un vector C que ser� la suma de los vectores A y B"
				vectorC(valoresA, valoresB, valoresC, n) 
			"D":
				Escribir "Ha seleccionado llenar un vector C que ser� la resta de los vectores A y B"
				vectorD(valoresA, valoresB, valoresC, n) 
			"E":
				Escribir "Ha seleccionado visualizar un vector"
				visualizar(valoresA, valoresB, valoresC, n)
				
			De Otro Modo:
				Escribir"Ha seleccionado Salir"
		Fin Segun
		
	Mientras Que option <> "F"
	
FinAlgoritmo

//***** option A *****
SubProceso vectorA(valoresA Por Referencia, n Por Referencia)
	
	Definir i Como Entero
	
	Para i<-0 Hasta n-1 Con Paso 1 Hacer
		valoresA[i] = Aleatorio(0,50)
	Fin Para
	
	Para i<-0 Hasta n-1 Con Paso 1 Hacer
		Escribir valoresA[i] ", " Sin Saltar
	Fin Para
	
FinSubProceso

//***** option B *****
SubProceso vectorB(valoresB Por Referencia, n Por Referencia)
	
	Definir i Como Entero
	
	Para i<-0 Hasta n-1 Con Paso 1 Hacer
		valoresB[i] = Aleatorio(0,50)
	Fin Para
	
	Para i<-0 Hasta n-1 Con Paso 1 Hacer
		Escribir valoresB[i] ", " Sin Saltar
	Fin Para
	
FinSubProceso

//***** option C *****
SubProceso vectorC(valoresA, valoresB, valoresC, n Por Referencia)
	
	Definir i Como Entero
	
	Para i<-0 Hasta n-1 Con Paso 1 Hacer
		valoresC[i] = valoresA[i] + valoresB[i]
		Escribir valoresC[i] ", " Sin Saltar
	Fin Para
	
FinSubProceso

//***** option D *****
SubProceso vectorD(valoresA, valoresB, valoresC, n Por Referencia)
	
	Definir i Como Entero
	
	Para i<-0 Hasta n-1 Con Paso 1 Hacer
		valoresC[i] = valoresA[i] - valoresB[i]
		Escribir valoresC[i] ", " Sin Saltar
	Fin Para
FinSubProceso

//***** option E *****
SubProceso visualizar(valoresA, valoresB, valoresC,n Por Referencia)
	
	Definir i Como Entero
	Definir option Como Caracter
	Escribir "Ingrese la opcion que desea visualizar"
	leer option
	
	option = Mayusculas(option)
	
	Si option = "A" Entonces
		Escribir "Escogio la opcion A"
		Para i<-0 Hasta n-1 Con Paso 1 Hacer
			Escribir valoresA[i] ", " Sin Saltar
		Fin Para
	FinSi
	
	Si option = "B" Entonces
		Escribir "Escogio la opcion B"
		Para i<-0 Hasta n-1 Con Paso 1 Hacer
			Escribir valoresB[i] ", " Sin Saltar
		Fin Para
	FinSi
	
	Si option = "C" Entonces
		Escribir "Escogio la opcion C"
		Para i<-0 Hasta n-1 Con Paso 1 Hacer
			Escribir valoresC[i] ", " Sin Saltar
		Fin Para
	FinSi
	
	Si option = "D" Entonces
		Escribir "Escogio la opcion D"
		Para i<-0 Hasta n-1 Con Paso 1 Hacer
			Escribir valoresC[i] ", " Sin Saltar
		Fin Para
	Fin Si
	
FinSubProceso
