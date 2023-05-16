//Una distribuidora de Nescafé tiene 4 representantes que viajan por toda la Argentina
//ofreciendo sus productos. Para tareas administrativas el país está dividido en cinco zonas:
//Norte, Sur, Este, Oeste y Centro. Mensualmente almacena sus datos y obtiene distintas
//estadísticas sobre el comportamiento de sus representantes en cada zona. Se desea hacer un
//programa que lea el monto de las ventas de los representantes en cada zona y calcule luego:
//a) el total de ventas de una zona introducida por teclado
//b) el total de ventas de un vendedor introducido por teclado en cada una de las zonas
//c) el total de ventas de todos los representantes.


Algoritmo extra8
	
	Definir M, N Como Entero
	
	M = 6 //Filas
	N = 7 //Columnas
	
	Definir matrizDatos Como Entero //En donde se ingresan los valores de las ventas por cada representante
	Definir matrizVentas Como Caracter //En donde se vuelcan los valores de la matriz datos
	Dimension matrizDatos(M, N)
	Dimension matrizVentas(M, N)
	
	InsertarDatos(matrizDatos, matrizVentas, M, N)
	//mostrarMatrizConFormato(matrizVentas)
	completarMatrizConFormato(matrizDatos, matrizVentas, M, N)
	
FinAlgoritmo

SubProceso InsertarDatos(matrizDatos, matrizVentas, M, N)
	
	Definir i, j, k, suma, posicion, venta, mayorZona, mayorRepre, indice Como Entero
	Definir zona Como Caracter
	
	suma = 0
	k = 1
	mayorRepre = 0
	
	Para i=1 hasta 4
		para j=1 hasta 5
			Segun j Hacer
				1:
					zona = "NORTE"
				2:
					zona = "SUR"
				3:
					zona = "ESTE"
				4:
					zona = "OESTE"
				5:
					zona = "CENTRO"
			Fin Segun
			
			Escribir "Ingrese la cantidad de ventas " i " para la zona " zona
			Leer venta
			
			matrizDatos[i,j] = venta //En la posicion correspondiente ingresa el valor de la venta indicada por el usuario
			suma = suma + venta //Suma en cada iteracion las ventas que realizo un representante para cada zona
			
		FinPara
		
		matrizDatos[k,j] = suma //En la ultima posicion de j y variando k (filas) -> totalRepresen, ingresa el valor de la suma de todas las ventas que realizo un representante
		
		Si matrizDatos[k,j] > mayorRepre Entonces
			
			mayorRepre = matrizDatos[k,j]
			posicion = i
			
		FinSi
		
		k = k+1 //Se suma un paso
		suma = 0 //Se inicializa en 0 la suma para comenzar un nuevo ciclo
		
	FinPara
	
	Escribir "El representate con mayor ventas es: " posicion
	
	suma = 0
	posicion = 0
	k = 1
	mayorZona = 0
	indice = 0
	
	//Se recorre por cada columna (zona), las filas de cada representante para obtener el volumen de ventas por cada zona
	
	Para j=1 hasta 5
		Para i=1 hasta 4
			
			suma = suma + matrizDatos[i,j]
			
		FinPara
		
		//En la fila total zona se ingresa el volumen de ventas de cada zona
		
		matrizDatos[5,j] = suma
		
		//Se compara si el volumen de ventas de cada zona es mayor con el valor establecido en un principio. Luego se va actualizando.
		
		Si matrizDatos[5,j]> mayorZona Entonces
			
			mayorZona =  matrizDatos[5,j]
			indice = j
			
		FinSi
		
		//Antes de finalizar el ciclo se inicializa la suma en cero.
		suma = 0
		
	FinPara
	
	Escribir "La zona con mayor ventas es: " indice
	
FinSubProceso

SubProceso mostrarMatrizConFormato(matrizVentas)
	
	matrizVentas[0,0]="--   XXXX   --"
	matrizVentas[0,1]="    NORTE     "
	matrizVentas[0,2]="     SUR      "
	matrizVentas[0,3]="    ESTE      "
	matrizVentas[0,4]="    OESTE     "
	matrizVentas[0,5]="   CENTRO     "
	matrizVentas[0,6]="TOTAL REPRESENTANTE"
	matrizVentas[1,0]="  REPRESENTANTE 1  "
	matrizVentas[2,0]="  REPRESENTANTE 2  "
	matrizVentas[3,0]="  REPRESENTANTE 3  "
	matrizVentas[4,0]="  REPRESENTANTE 4  "
	matrizVentas[5,0]="  TOTAL ZONA  "
	matrizVentas[5,6]=" XXXXX"
	
FinSubProceso

SubProceso completarMatrizConFormato(matrizDatos, matrizVentas, M, N)
	
	Definir i, j, k Como Entero
	
	matrizDatos[5,6] = 0
	
	
	Para i=1 hasta 5
		Para j=1 hasta 6
			matrizVentas[i,j] = ConvertirATexto(matrizDatos[i,j]) //se convierte a texto porque matriz formato se definio como caracter
			Segun matrizDatos[5,j]
				1:matrizVentas[5,j]=" NORTE   "
				2:matrizVentas[5,j]=" SUR     "
				3:matrizVentas[5,j]=" ESTE    "
				4:matrizVentas[5,j]=" OESTE   "
				5:matrizVentas[5,j]=" CENTRO  "
					
			FinSegun
			
		FinPara
		Escribir ""
		
	FinPara
	
	mostrarMatrizConFormato(matrizVentas)
	
	Para i=0 hasta M-1
		Para j=0 hasta N-1
			
			Si i==0 o j==0 o i==5 Entonces
				
				Escribir Sin Saltar "[" matrizVentas[i,j] "]"
				
			Sino
				
			    Escribir Sin Saltar "[ " matrizVentas[i,j]
				Escribir Sin Saltar" ]"
				
			FinSi
			
		FinPara
		Escribir ""
		
	FinPara
	
	
	
	
	
FinSubProceso
