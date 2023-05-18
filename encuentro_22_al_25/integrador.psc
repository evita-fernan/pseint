Algoritmo integrador
	
	Definir M Como Entero
	
	Definir matriz, genZ Como Caracter
	
	genZ = ingresarGen
	
	Escribir "soy genZ" genZ
	
	M = determinarTamanio(genZ)
	
	Dimension matriz(M, M)
	
	completarMatriz(matriz, M, genZ)
	
	imprimirMatriz(matriz, M)
	
	matrizValida(matriz, M)
	
FinAlgoritmo

Funcion genZ <- ingresarGen ()
	
	Definir gen, genZ, letra Como Caracter
	Definir logGen, i, qty, contador Como Entero 
	Definir raizGen, dif Como Real
	

	
	Repetir
		Escribir "Ingrese el gen a codificar de 9, 16 o 1369 caracteres"
		//gen = "ACCDBBADDDCCBACABDCBDCBADBDACBBBBDAABBCCBAACCABDBDCDDABDBDADAAACBBBBCDDDCBBBDDCDABBDDABDBDBBACADCDAAADACDDDACCDCACDDABACDCCCAABDDCCACDADDBCBAACCDBCBCDDDCAACCBAADCBBBCDCBBACBDCCDDADBABCAABBACABDCAACCBDADDCAAACCDBDBBCDDDDDACBCDDADDDDCBADADBDCADDABBCDAACBCCDDDADDADADAACCACDCDDABCCCADABBACDACCAADDBCBCCDADBCCADAAABDDDAABBABCADDCCAADDCDDCDCACBADADACADDAADCBDBCDBDDACDCBCDCCABBDCBACDDACCCDADBCADCACAAABBBCADDDDBCBACDBDAAADDDACCDACBBBADACCCDCACCBACDADBCBBDADACABAACBCCADDCCCCACCCCADBCCDAADCAABBABAADDBDADDABABCCABBCDDACCADAAADBBCCDBADCADCBBDADACCDDBCAAABBBDCAAAACBAADBABBABACDDBBCBDCDCADABABBDADCBADAACDBCBDABADBCBADCACADAABCDDCABACDDBDCBCBDCAAACBDABBCACBACCCBACACDCADBDCDCDDCAACDBDCBACDBBDAABDBBCBAAADBABDBAACAAACDCDAAABABDDDBCACADCBBAADCCDABCCCBBCACCBAABDAADDDCDACDDDBCDCCBABDABACCDCDCDABAABCABBADADCBDDACDDCDDCDACDADADCACBCDABABDDCCDBCCDABACDBDAABDBDDDBADDBACABDCDDBACDDBBDDBBACBCCAACABBDADDBCAACCBCCDADDBCAADDADCCCBAAABABBBBBCABAACADBCBBABACCABCDAABADCCCCDCCADDDCCABBDDDAAADDADACBBBCBDAADACABABBAACCCADADDABDBCADDDCCDBBCCBCDCDBDDDDCACDACDBBBDDBADDACADDADDABCACDCBBADDABBBDCBBDCDAABADDDDDBCACCCCAAACBCBCDBACCCDACCCDBCBDCBADBCDDACCDBDBDBCAAACDDCBAABDBCAADCADDBABABDCBCBCBBBCACBCADDCAAAAAACBBACBBCCACBDCDDDDADCAAACBABDDBDADBAADCBABDDBCDBABDBAADDDBACBBBCCCDBDDBDDAADBBADADDDCBCACBABCDBBABAADABCABCDBACBBBCDBADADDBDCBDABBDDDCDDCCACDCBDCADABAABCDCAACCDDBADBDBCDACAAACBCADCCCBAC"
		Leer gen
		gen = Mayusculas(gen)
		logGen = Longitud(gen)
		raizGen = raiz(logGen)
		dif = trunc(raizGen) - raizGen
		
		Si dif == 0 Entonces
			
			contador = 0
			
			Para i=0 hasta logGen-1 Hacer
				
				letra = Subcadena(gen, i, i)
				
				Si letra <> "A" Y letra <> "B" Y letra <> "C" Y letra <> "D" Entonces
					
					contador = contador + 1
					
				FinSi
				
			FinPara
			
			Si contador = 0 Entonces
				
				genZ = gen
				
			FinSi
			
		FinSi

		
	Mientras Que contador <> 0
	

FinFuncion

Funcion tamanio <- determinarTamanio (genZ)
	
	Definir tamanio, raizGen, logGen como Entero
	
	logGen = Longitud(genZ)
	raizGen = raiz(logGen)
	
	tamanio = raizGen
	
FinFuncion


SubProceso completarMatriz(matriz, M, genZ)
	
	Definir i, j, contador Como Entero
	
	contador = 0
	
	Para i=0 hasta M-1
		Para j=0 hasta M-1
			matriz[i,j] = Subcadena(genZ, contador, contador)
			contador = contador + 1
		FinPara
		
	FinPara
	
FinSubProceso


SubProceso imprimirMatriz(matriz, M)
	
	Definir i,j Como Entero
	
	Escribir "Los valores de la matriz son los siguientes: "
	
	Para i=0 hasta M-1
		Para j=0 hasta M-1
			Escribir matriz[i,j] " " Sin Saltar
		FinPara
		Escribir ""
	FinPara
	
FinSubProceso


SubProceso matrizValida(matriz, M)
	
	Definir i, j, contadorDiag, contadorAnti Como Entero
	Definir diagonal, antiDiagonal Como Caracter
	Dimension diagonal(M), antiDiagonal(M)
	
	contadorDiag = 0
	contadorAnti = 0
	
	Para i=0 hasta M-1
		Para j=0 hasta M-1
			
			Si i=j Entonces
				
				diagonal(i) = matriz[i,j]
				
			FinSi
			
			Si i+j = M-1
				
				antiDiagonal(i) = matriz[i,j]
				
			FinSi
			
		FinPara
	FinPara
	
	Para i=0 hasta M-1
		
		Si diagonal(i) = matriz[0,0]
			
			contadorDiag = contadorDiag +1 
			
		FinSi
		
		Si antiDiagonal(i) = matriz[M-1,0]
			
			contadorAnti = contadorAnti +1 
			
		FinSi
		
	FinPara
	
	Si contadorDiag = M Y contadorAnti = M Entonces
		
		Escribir "Se ha encontrado el gen Z :)"
		
	SiNo
		
		Escribir "No se ha encontrado el gen Z :("
		
	FinSi
	
FinSubProceso
