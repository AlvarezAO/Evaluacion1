
Funcion resultado <- uno ( )
	Escribir "Ingresa primer valor"
	Leer numUno
	Escribir "Ingresa segundo valor"
	Leer numDos
	Escribir "Ingresa tercer valor"
	Leer numTres	
	suma <- numUno+ numDos + numTres
	
	resultado <- suma/3	
Fin Funcion

Funcion resultadoDos <- dos ( )
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

Funcion resultadoTres <- tres ( dos )
	Escribir "Menú de uso de baño"
	Repetir
		Escribir "1 - Baño | 2 - Ducha |"
		leer opcionBanio
		Si opcionBanio < 0 O opcionBanio > 2 Entonces
			Escribir "Digita una opción válida"
		Fin Si
		Escribir " "
	Hasta Que opcionBanio > 0 Y opcionBanio < 3
	Escribir " "
	Si opcionBanio == 1 Entonces
		Escribir name " has elegido la opción " opcionBanio ". Tienes que pagar $250."
	SiNo
		si opcionBanio == 2 Entonces
		Escribir name " has elegido la opción " opcionBanio ". Tienes que pagar $2500."	
		FinSi
	Fin Si
Fin Funcion

Funcion resultadoCuatro <- cuatro ( )
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

Funcion resultadoCinco <- cinco ( )
	
	num<-1
	
	Mientras num <> 0 Hacer		
		Escribir "Ingresa un valor"
		Leer num
		suma <- suma + num	
		
		resultadocinco <- suma/cont
	Fin Mientras
	
Fin Funcion

Funcion resultado <- seis ( )
	cont <- 0
	Repetir
		Escribir "Adivina el nombre que comienza con J"
		Leer name
		cont <- cont +1
	Hasta Que Minusculas(name)== "juan"
	Si Minusculas(name) == "juan" Entonces
		Escribir "Ganaste! Lo lograste en " cont " intentos."
	FinSi
Fin Funcion

//Funcion resultadoSiete <- siete ( arregloSiete, tope )
//	Dimension nombreRepetido[tope]
	
//	Para i<-1 Hasta tope Con Paso 1 Hacer
//		 cont <- arregloSiete[i]
//		Para j<-1 Hasta tope Con Paso 1 Hacer
//			Si cont == arregloSiete[j] Entonces
//				nombreRepetido[i] <- cont
				
//			SiNo
//				Escribir "No hay nombres repetidos" nombreRepetido[i]
//			Fin Si
//		Fin Para
//		resultadoSiete <- nombreRepetido[i]
//	Fin Para
//	Escribir " "
//Fin Funcion

Funcion resultadoOcho <- ocho (x)
	Repetir
		Escribir "Ingresa cantidad de alumnos a registrar"
		Leer x
	Hasta Que x > 0
	
	filas <- x
	columnas <- 5
	Dimension TD[filas]
	
	Para i<-1 Hasta filas Con Paso 1 Hacer				
		Escribir "Ingresa nombre de estudiante" i
		Leer name
		TD[i] <- name			
	Fin Para
	
	Para i<-1 Hasta filas Con Paso 1 Hacer	
		
		Escribir sin saltar TD[i] " "	
		Si i MOD 5 == 0  Entonces
			Escribir " "
		Fin Si
	
	Fin Para
	FinFuncion


Algoritmo sin_titulo
	//MENU
	tope <- 5
	
	
	Repetir
		Escribir "Menú de funciones"
		Escribir "| Secuencial - 1 | Si Entonces - 2 | Si Entonces anidado - 3 | Según - 4 | Mientras - 5 |"
		Escribir "| Repetir - 6 | Para - 7 | Array - 8 | Matriz - 9 | Salir - 10 |"
		Leer menu
		Si menu < 0 O menu > 10 Entonces
			Escribir "Ingresa una opción válida"
		Fin Si
		Escribir " "
	Hasta Que menu > 0 Y menu <= 10
	
	Segun menu Hacer
		1:
			res <- uno()
			Escribir "La division de los tres números es: " res
		2:
			Escribir dos()
		3:
			Escribir tres(dos)
		4:
			Escribir cuatro()
		5:
			Escribir cinco()
		6:
			Escribir seis()
		7:
			Escribir "NO FUNCIONÓ"
			//tope <- 5
			//Dimension arregloSiete[tope]
			//Dimension nombreRepetido[tope]
			
			
			//Para i<-1 Hasta tope Con Paso 1 Hacer
			//	Escribir "Ingresa nombre " i
			//	Leer name
			//	arregloSiete[i] <- name
			//Fin Para
			//Escribir Sin Saltar arregloSiete[i] " "
			
			//Escribir siete(nombreRepetido, tope)
		8:
			
			Escribir ocho(x)
				
		//De Otro Modo:
		//	secuencia_de_acciones_dom
	Fin Segun
FinAlgoritmo
