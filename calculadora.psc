// calculadora con funciones el usuario elige la operacion, n numeros.

Algoritmo calculadora 
	
    Escribir "----------------------------- CALCULADORA -----------------------------"
    Escribir "----------------------- Seleccione la Operacion -----------------------"
    Escribir "1 ---------------- SUMA"," ","Suma todos los numeros ------------------"
    Escribir "2 --------------- RESTA"," ","Resta del primer numero los demas -------"
    Escribir "3 ------ MULTIPLICACION"," ","Calcula el producto de todos los numeros "
    Escribir "4 ------------ DIVICION"," ","Divide el primer termino por los demas --"
    Leer oper
    Escribir "Cuantos Numeros desea operar: "
    leer n //cantidad de numeros 
	
	Dimension numeros_ingresados(n)
	llenar(numeros_ingresados,n);
    Segun oper hacer 
        1: //suma 
			a=suma(numeros_ingresados,n)
        2: //resta 
			b=resta(numeros_ingresados,n)
        3: // multiplicacion 
			c=mult(numeros_ingresados,n)
        4: // division
			d=div(numeros_ingresados,n)
			
    FinSegun
FinAlgoritmo

// esta funcion me permite llenar el array con los n numeros ingresados 
Funcion llenar(numer,n) // numer es el array y valida que el numeor ingresado sea diferente de cero
	
	Definir i Como Entero
    Para i=1 Hasta n Con Paso 1 hacer 
        Escribir "Escriba un numero: "
        leer n1
		si n1=0
			Escribir "el numero debe ser diferente de cero - Ingrese otro - : "
			leer n1
			numer(i)<-n1
		FinSi
		numer(i) <- n1
    FinPara
FinFuncion

// para sumar 
Funcion totals <- suma(numer, n)
	totals = 0
	Para i=1 hasta n Con Paso 1 hacer 
		totals=totals+numer(i)
	FinPara
	Escribir "La suma de todos los terminos es: ",totals
FinFuncion

// para restar 
Funcion totalr <- resta(numer,n)
	Para i=1 hasta n Con Paso 1 hacer 
		totalr= numer(1) - numer(i)
	FinPara
	Escribir "La diferencia de todos los numeros es: ",totalr
FinFuncion

// para multiplicar 
Funcion totalm <- mult(numer, n)
	totalm = 1 // modulo de la multiplicacion si la inicializo en cero al multiplicar siempre cera cero el resultado 
	Para i=1 hasta n Con Paso 1 hacer 
		totalm=totalm*numer(i)
	FinPara
	Escribir "El producto de todos los terminos es: ",totalm
FinFuncion

// para dividir
Funcion totald <- div(numer, n)
	Para i=1 hasta n Con Paso 1 hacer 
		totald=numer(1)/numer(i)
	FinPara
	Escribir "La suma de todos los terminos es: ",totald
FinFuncion

