//Una empresa de venta de productos por correo desea realizar una estadística de las ventas
//realizadas de cada uno de sus productos a lo largo de una semana. Distribuya luego 5
//productos en los 5 días hábiles de la semana. Se desea conocer:
//	a) Total de ventas por cada día de la semana.
//	b) Total de ventas de cada producto a lo largo de la semana.
//	c) El producto más vendido en cada semana.
//	d) El nombre, el día de la semana y la cantidad del producto más vendido.

Algoritmo extra7
	
	Definir M, N Como Entero
	
	M = 8
	N = 7
	
	Definir matrizDatos Como Entero
	Definir matrizFormato Como Caracter
	
	Dimension matrizFormato(M, N)
	Dimension matrizDatos(M,N)
	
	//consiste en completar la matriz con la cantidad de productos vendidos por dia. Estos datos son ingresados por el usuario.
	insertarDatosyCalcular(matrizDatos, M, N) 
	
	//se completa la matriz con los datos obtenidos en el paso anterior
	completarMatriz(matrizDatos, matrizFormato, M, N)
	
	//muestra la matriz de informe final con la cantidad de productos vendidos, el total de la semana y el producto mas vendido por dia.
	
FinAlgoritmo


SubProceso insertarDatosyCalcular(matrizDatos, M, N)
	
	Definir i, j, k, suma, mayor, posicion, prod  Como Entero
	Definir dia Como Caracter
	
	suma = 0
	posicion = 0
	k = 1 //Este comienza en 1 de forma tal que coincida con el inicio de la matriz con formato para el informe final. 
	//En 0 el espacio se encuentra en blanco (ver Matriz Final). Asimismo, k reemplazara a i en el primer ciclo.
	
	//El ciclo comienza en 1 y finaliza en 5 para que coincidan el numero del dia y del producto.
	Para i=1 hasta 5
		Para j=1 hasta 5
			Segun j Hacer
				1:
					dia = "Lunes"
				2:
					dia = "Martes"
				3:
					dia = "Miércoles"
				4:
					dia = "Jueves"
				5:
					dia = "Viernes"
			Fin Segun
			
			Escribir "Ingrese la cantidad que se vendio del producto" i " el día " dia
			Leer prod
			suma = suma + prod
			matrizDatos[i,j] = prod
			
		FinPara
		
		matrizDatos[k,j] = suma
		k = k+1
		suma = 0
		
	FinPara
	
	suma = 0
	mayor = 0
	k = 1
	
	//Se recorre la matrizDatos primero por filas manteniendo la columna fija.
	Para j=1 hasta 5
		Para i=1 hasta 5
			
			suma = suma + matrizDatos[i,j]
			
			Si matrizDatos[i,j] > mayor Entonces
				
				mayor =  matrizDatos[i,j] 
				posicion = i
				
			FinSi
			
		FinPara
		
		matrizDatos[6,j] = suma
		matrizDatos[7,j] = posicion
		k = k+1
		suma = 0
		mayor = 0		
		
		//Antes de finalizar el ciclo se inicializan las variables nuevamente antes de moverse de columna
	FinPara
	
FinSubProceso


SubProceso mostrarMatrizConFormato(matrizFormato, M, N)
	
	Definir i, j Como Entero
	
//	Para i=0 hasta M-1
//		Para j=0 hasta N-1
//			
//			Si i=0 Entonces
//				
//				matrizFormato[i,j]="--   XXXX   --"
//				matrizFormato[i,j]="    LUNES     "
//				matrizFormato[i,j]="    MARTES    "
//				matrizFormato[i,j]="   MIERCOLES  "
//				matrizFormato[i,j]="   VIERNES    "
//				matrizFormato[i,j]="TOTAL PRODUCTO"
//				
//			FinSi
//			
//			si j=0 Entonces
//				matrizFormato[i,j]="  PRODUCTO 1  "
//				matrizFormato[i,j]="  PRODUCTO 2  "
//				matrizFormato[i,j]="  PRODUCTO 3  "
//				matrizFormato[i,j]="  PRODUCTO 4  "
//				matrizFormato[i,j]="  PRODUCTO 5  "
//				matrizFormato[i,j]=" TOTAL SEMANA "
//				matrizFormato[i,j]=" PROD + VENDIDO "
//				
//			FinSi
//			
//			si i=6 Y j=6 Entonces
//				matrizFormato[6,6]=""
//			FinSi
//			
//			si i=7 Y j=6 Entonces
//				matrizFormato[7,6]="              "
//			FinSi
//			
//		FinPara
	//	FinPara
	
	matrizFormato[0,0]="--   XXXX   --"
	matrizFormato[0,1]="    LUNES     "
	matrizFormato[0,2]="    MARTES    "
	matrizFormato[0,3]="   MIERCOLES  "
	matrizFormato[0,4]="    JUEVES    "
	matrizFormato[0,5]="   VIERNES    "
	matrizFormato[0,6]="TOTAL PRODUCTO"
	matrizFormato[1,0]="  PRODUCTO 1  "
	matrizFormato[2,0]="  PRODUCTO 2  "
	matrizFormato[3,0]="  PRODUCTO 3  "
	matrizFormato[4,0]="  PRODUCTO 4  "
	matrizFormato[5,0]="  PRODUCTO 5  "
	matrizFormato[6,0]="TOTAL SEMANA  "
	matrizFormato[7,0]="PROD + VENDIDO"
	matrizFormato[6,6]=""
	matrizFormato[7,6]="              "
	
FinSubProceso

SubProceso completarMatriz(matrizDatos, matrizFormato, M, N)
	
	Definir i, j, k Como Entero
	
	matrizDatos[7,6] = 0 //se inicializan en cero dado que arroja un error por no estar iniciada
	matrizDatos[6,6] = 0 //se inicializan en cero dado que arroja un error por no estar iniciada
	
	Para i=1 hasta 7
		Para j=1 hasta 6
			matrizFormato[i,j] = ConvertirATexto(matrizDatos[i,j]) //se convierte a texto porque matriz formato se definio como caracter
			Segun matrizDatos[7,j]
				1:matrizFormato[7,j]=" PRODUCTO 1   "
				2:matrizFormato[7,j]=" PRODUCTO 2   "
				3:matrizFormato[7,j]=" PRODUCTO 3   "
				4:matrizFormato[7,j]=" PRODUCTO 4   "
				5:matrizFormato[7,j]=" PRODUCTO 5   "
					
			FinSegun	
			
		FinPara
		Escribir ""
		
	FinPara
	
	mostrarMatrizConFormato(matrizFormato, M, N)
	
	Para i=0 hasta M-1
		Para j=0 hasta N-1
			
			
			Si i==0 o j==0 o i==7 Entonces
				escribir Sin Saltar "[" matrizFormato[i,j] "]"
			sino
			    Escribir Sin Saltar "[ " matrizFormato[i,j]
				para k=0 hasta 6-(Longitud(matrizFormato[i,j]))
					Escribir Sin Saltar " " 
				FinPara
				Escribir Sin Saltar"]"
			FinSi
			
			
		FinPara
		Escribir ""

	FinPara
	
FinSubProceso
