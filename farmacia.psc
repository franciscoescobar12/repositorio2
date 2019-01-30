Algoritmo Inventario
	salir<-1
	Dimension medicinas[50,4]
	
	Para f<-1 Hasta 50 Con Paso 1 Hacer
			medicinas[f,1]<-"0"
	Fin Para
	medicinas[1,1]<- "1"
	medicinas[1,2]<- "54"
	medicinas[1,3]<- "01/02/19"
	medicinas[1,4]<- "22"
	
	medicinas[2,1]<- "1"
	medicinas[2,2]<- "16"
	medicinas[2,3]<- "23/01/19"
	medicinas[2,4]<- "22"
	
	medicinas[3,1]<- "2"
	medicinas[3,2]<- "50"
	medicinas[3,3]<- "30/01/19"
	medicinas[3,4]<- "38"
	
	medicinas[4,1]<- "2"
	medicinas[4,2]<- "103"
	medicinas[4,3]<- "02/04/19"
	medicinas[4,4]<- "38"
	
	medicinas[5,1]<- "3"
	medicinas[5,2]<- "9"
	medicinas[5,3]<- "05/02/19"
	medicinas[5,4]<- "109"
	
	
	
	
	Mientras salir==1 Hacer
	Escribir "Opciones"
	Escribir "1- Validar Existencia"
	Escribir "2- Validar Caducidad"
	Escribir "3. Surtir"
	Escribir "4- Inventario"
	Escribir "5. Salir"
	Leer opcion
	Segun opcion Hacer
		1:
			sumPara<-0
			sumIbu<-0
			sumAmb<-0
			Para i<-1 Hasta 50 Con Paso 1 Hacer
				
				Si medicinas[i,1]== "1" Entonces
					sumPara<- sumPara+CONVERTIRANUMERO(medicinas[i,2])
				Fin Si
				Si medicinas[i,1]== "2" Entonces
					sumIbu<- sumIbu+CONVERTIRANUMERO(medicinas[i,2])
				Fin Si
				Si medicinas[i,1]== "3" Entonces
					sumAmb<- sumAmb+CONVERTIRANUMERO(medicinas[i,2])
				Fin Si
			Fin Para
			Si sumPara<=15 Entonces
				Escribir "Comprar mas paracetamol"
			Fin Si
			Si sumIbu<=15 Entonces
				Escribir "Comprar mas ibuprofeno"
			Fin Si
			Si sumAmb<=15 Entonces
				Escribir "Comprar mas ambroxol"
			Fin Si
		2:
			Escribir "Ingresar Fecha"
			Leer fecha
			Para i<-1 Hasta 50 Con Paso 1 Hacer
				
				Si medicinas[i,3]<= fecha y medicinas[i,1]<>"0" Entonces
					medicinas[i,1]<-"0"
				Fin Si
			Fin Para
			
		3:
			aux<-1
			Repetir
				Si medicinas[aux,1]=="0" Entonces
					Escribir "Medicamento"
					Leer m
					medicinas[aux,1]<-m
					Escribir "Existencia"
					Leer e
					medicinas[aux,2]<-e
					Escribir "Caducidad"
					Leer c
					medicinas[aux,3]<-c	
					Escribir "Precio"
					Leer p
					medicinas[aux,4]<-p
					aux<--1
				Fin Si
				aux<-aux+1
			Hasta Que aux==0
			
		4:
			inv<-0
			Para f<-1 Hasta 50 Con Paso 1 Hacer
				Si medicinas[f,1]<> "0" Entonces
					Escribir "medicina:", medicinas[f,1]," Existencia:", medicinas[f,2]," Caducidad:", medicinas[f,3],"Precio($): ", medicinas[f,4]
					inv<-inv+CONVERTIRANUMERO(medicinas[f,4])
				Fin Si
			Fin Para
			Escribir "Total de inversion $",inv
		5: 
			salir<-0
		De Otro Modo:
			Escribir "No es opcion"
	Fin Segun
Fin Mientras
	

FinAlgoritmo
