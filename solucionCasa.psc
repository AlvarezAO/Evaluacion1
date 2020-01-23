
Funcion resultUno <- uno (  )
	Escribir "Ingresa primer valor"
	Leer numUno
	Escribir "Ingresa segundo valor"
	Leer numDos
	Escribir "Ingresa tercer valor"
	Leer numTres	
	suma <- numUno+ numDos + numTres
	
	resultUno <- suma/3
Fin Funcion

Funcion resultDos <- dos (  )
	Escribir "Ingresa tu nombre"
	Leer name
	Repetir
		Escribir "Ingresa tu género"
		Escribir "F - Femenino | M - Masculino"
		Leer genero
    Hasta Que Minusculas(genero) == 'f' O Minusculas(genero) == 'm'
	
	Si Minusculas(genero) == 'f'  Entonces
		Escribir "Hola " name ", tu tienes que ir al baño de mujeres"
	SiNo
		Si Minusculas(genero) == 'm' Entonces
			Escribir "Hola " name ", tu tienes que ir al baño de hombres"
		Fin Si		
	FinSi
Fin Funcion

Funcion resultTres <- tres ( dos )
	Escribir "Menú de uso de baño"
	Repetir
		Escribir "1 - Baño | 2 - Ducha | 3 - Ambas"
		leer opcionBanio
		Si opcionBanio < 0 O opcionBanio > 3 Entonces
			Escribir "Digita una opción válida"
		Fin Si
		Escribir " "
	Hasta Que opcionBanio > 0 Y opcionBanio < 4
	Escribir " "
	Si opcionBanio == 1 Entonces
		Escribir name " has elegido la opción " opcionBanio ". Tienes que pagar $250."
	SiNo
		si opcionBanio == 2 Entonces
			Escribir name " has elegido la opción " opcionBanio ". Tienes que pagar $2500."	
		SiNo
			si opcionBanio == 3 Entonces
				Escribir name " has elegido la opción " opcionBanio ". Tienes que pagar $2750."	
			FinSi
		FinSi
	Fin Si
Fin Funcion

Funcion resultCuatro <- cuatro (  )
	Repetir
		Escribir "Ingresa un valor de 1 a 10"
		Leer num
		Si num <= 0 O num > 10 Entonces
			Escribir "Ingresa un valor válido"
		Fin Si
	Hasta Que num > 0 Y num < 11
	
	Segun num Hacer
		1:
			Escribir "UNO"
		2:
			Escribir "DOS"
		3:
			Escribir "TRES"
		4:
			Escribir "CUATRO"
		5:
			Escribir "CINCO"
		6:
			Escribir "SEIS"
		7:
			Escribir "SIETE"
		8:
			Escribir "OCHO"
		9:
			Escribir "NUEVE"
		10:
			Escribir "DIEZ"
	Fin Segun
Fin Funcion

Funcion resultCinco <- cinco (  )
	num <- 1
	suma <- 0
	cont <- 0
	Mientras num != 0 Hacer
		Escribir "Ingresa valores a promediar. Ciclo termina con 0"
		Leer num
		suma <- suma + num
		cont <- cont + 1
	Fin Mientras
	
	prom <- suma/(cont-1)
	resultCinco <- prom
	
Fin Funcion

Funcion resultSeis <- seis (  )
	cont <- 0
	Repetir
		Escribir "Ingresa Nombre que comience con J"
		Leer name
		cont <- cont + 1
		Si Minusculas(SubCadena(name,1,1)) != 'j' Entonces
			Escribir "Vuelve a Ingresar nombre que comience con J"
		SiNo
			si Minusculas(name) != "juan" Entonces
				Escribir "Cerca, vuelve a intentarlo"
			SiNo
				si Minusculas(name) == "juan" Entonces
					Escribir "Ganaste!! Lo lograste en " cont " intentos."
				FinSi
			Fin Si
		Fin si
		
	Hasta Que Minusculas(name) == "juan"
Fin Funcion

Funcion resultSiete <- siete ( x )
	columna <- 5
	Dimension arraySiete[columna]
	Dimension repetidos[columna]
	
	Para i<-1 Hasta columna Con Paso 1 Hacer
		Escribir "Ingresa nombre del alumno"
		Leer name
		arraySiete[i] <- name
	Fin Para
	
	Para i<-1 Hasta columna Con Paso 1 Hacer		
		Para j<-i+1 Hasta columna Con Paso 1 Hacer
			Si arraySiete[i] == arraySiete[j] Entonces
				repetidos[i] <- arraySiete[i]
			SiNo
				Escribir "No hay nombres repetidos" //Evitar que imprima 10 veces
			Fin Si
		Fin Para
	Fin Para
	
	Para i<-1 Hasta columna Con Paso 1 Hacer
		Escribir Sin Saltar repetidos[i] " "
	Fin Para
Fin Funcion

Funcion resultOcho <- ocho(x)
	Repetir
		Escribir "Ingresa cantidad de alumnos a ingresar"
		Leer x
	Hasta Que x > 0
	columna <- x
	Dimension arrayOcho[columna]
	
	Para i<-1 Hasta columna Con Paso 1 Hacer
		Escribir "Ingresa el nombre del estudiante" i
		Leer name
		arrayOcho[i] <- name
	Fin Para
	
	Para i<-1 Hasta columna Con Paso 1 Hacer
		Escribir Sin Saltar arrayOcho[i] " "
		Si i MOD 5 == 0 Entonces
			Escribir " "
		Fin Si
	Fin Para
	
	
Fin Funcion

Funcion resultNueve <- nueve(TD,fila,columna)
	
	Repetir
		Escribir "Ingresa la cantidad de alumnos a ingresar"
		Leer fila
	Hasta Que fila > 0
	columna<- 4
	
	Dimension T[fila,columna]
	Para i<-1 Hasta fila Con Paso 1 Hacer
		Para j<-1 Hasta columna Con Paso 1 Hacer
			Si j == 1 Entonces
				Escribir "Ingresa Nombre del alumno"
				Leer name
				T[i,j] <- name
			SiNo
				Si j == 2 Entonces
					Escribir "Ingresa Apellido del alumno"
					Leer apellido
					T[i,j] <- apellido
				SiNo
					si j == 3 Entonces
						Escribir "Ingresa telefono del alumno"
						Leer fono
						T[i,j] <- fono
					SiNo
						si j == 4 Entonces
							Escribir "Ingresa el email del alumno"
							Leer email
							T[i,j] <- email
						FinSi
					FinSi
				FinSi
			Fin Si
		Fin Para
	Fin Para
	
	Para i<-1 Hasta fila Con Paso 1 Hacer
		Para j<-1 Hasta columna Con Paso 1 Hacer
			Escribir Sin Saltar T[i,j] " "
		Fin Para
		Escribir " "
	Fin Para	
Fin Funcion

Funcion resultDiez <- diez (  )
	Escribir "Haz salido del programa"
Fin Funcion


Algoritmo EvaluacionUno
	
	Repetir
		Escribir "Menú"
		Escribir "-------------"
		Escribir "1- Secuencial"
		Escribir "2- Si Entonces"
		Escribir "3- Si Entonces Anidado"
		Escribir "4- Según"
		Escribir "5- Mientras"
		Escribir "6- Repetir"
		Escribir "7- Para"
		Escribir "8- Arreglo"
		Escribir "9- Matriz"
		Escribir "10- Salir"
		Leer menu
		
		Segun menu Hacer
			1:
				Escribir " "
				Escribir uno()
			2:
				Escribir " "
				Escribir dos()
			3:
				Escribir " "
				Escribir tres(dos)
			4:
				Escribir " "
				Escribir cuatro()
			5:
				Escribir " "
				Escribir cinco()
				Escribir "La cantidad de valores ingresados fueron " cont-1
			6:
				Escribir " "
				Escribir seis()
			7:
				Escribir " "
				Escribir siete(x)
			8:
				Escribir " "
				Escribir ocho(x)
			9:
				Escribir " "
				Escribir nueve(TD,fila,columna)
			10:
				Escribir diez()
		Fin Segun
		//Limpiar Pantalla
	Hasta Que menu == 10
	Escribir " "
	Limpiar Pantalla
	
	
	
	
	
FinAlgoritmo
