//Crear dos vectores que tengan el mismo tamanio (el tamanio se pedira por teclado) y
//almacenar en uno de ellos nombres de personas como cadenas. En el segundo vector se
//debe almacenar la longitud de cada uno de los nombres (para ello puedes usar la funci�n
//	Longitud() de PseInt). Mostrar por pantalla cada uno de los nombres junto con su longitud.


Algoritmo extra3
	
	Definir i, n, vector2 Como real
	definir vector1 Como Cadenas
	
	Escribir "Ingrese el tamanio que tendran los vectores"
	Leer n
	
	Dimension vector1[n]
	Dimension vector2[n]
	
	Para i<-0 Hasta n-1 Con Paso 1 Hacer
		Escribir "Ingrese el nombre de una persona"
		Leer vector1[i]
		
		vector2[i] = Longitud(vector1[i])
		
	Fin Para
	
	Para i<-0 Hasta n-1 Con Paso 1 Hacer
		Escribir "El nombre ingresado es: " vector1[i]
		Escribir "La longitud del nombre ingresado es: " vector2[i]
	Fin Para
	
	
FinAlgoritmo
