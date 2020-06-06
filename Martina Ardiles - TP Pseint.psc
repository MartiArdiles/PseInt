SubProceso ListarAlumnos(calificacion,apellidoAlumno,cantAlumnos,ListaCompleta)
	
	Definir total Como Real;
	Definir i Como Entero;
	
	total <- 0;
	
	
	Para i<-0 Hasta cantAlumnos-1 Con Paso 1 Hacer
		Si calificacion[i] > 0 Entonces
			
			Escribir apellidoAlumno[i], "	--	", calificacion[i];
		FinSi
	FinPara	
	
FinSubProceso

Proceso CargarNotasParciales
	Definir cantAlumnos Como Entero;
	Definir calificacion Como Real;
	Definir opcion Como Entero;
	definir contador Como Entero;
	definir apellidoAlumno Como Caracter;
	
	cantAlumnos <- 100;
	
	dimension calificacion(100);
	dimension apellidoAlumno(100);
	
	
	
	Repetir
		Limpiar Pantalla;
		Escribir "BIENVENIDO";
		Escribir "";
		Escribir "MENÚ DE OPCIONES";
		Escribir "1. Carga de notas de parciales";
		Escribir "2. Listado de notas";
		Escribir "3. Salir";
		Escribir "";
		Escribir "Ingrese una opción: ";
		
		Leer opcion;
		
		Segun opcion Hacer
			1:
				Escribir "Ingrese la cantidad de alumnos a los cuales desea ingresarles una nueva calificación: ";
				Escribir "Nota: la capacidad máxima de carga es de 100 alumnos";
				Leer cantAlumnos;
				
				
				Para contador<-0 Hasta cantAlumnos-1 Con Paso 1 Hacer
					Escribir "Ingrese el apellido del alumno: ", contador+1;
					Leer apellidoAlumno[contador];
					
					Repetir
						Escribir "Calificación: ";
						Leer calificacion[contador];
						
						Si calificacion[contador] <= 0 o calificacion[contador] > 10 Entonces
							Escribir "La nota ingresada no es válida";
							Escribir "Por favor, reingrese: ";
						FinSi
						
					Hasta Que calificacion[contador] > 0;
					
				FinPara
				Limpiar Pantalla;
				Escribir "Carga existosa!";
				Escribir "Precione cualquier tecla para continuar";
				Esperar Tecla;
				
			2:
				Limpiar Pantalla;
				Escribir "LISTADO DE CALIFICACIONES DE ÚLTIMOS PARCIALES";
				Escribir "";
				ListarAlumnos(calificacion,apellidoAlumno,cantAlumnos,verdadero);
				
				Escribir "Presione cualquier tecla para continuar";
				Esperar Tecla;
			9:
				Escribir "Muchas gracias!";
				Escribir "Saliendo";
			De Otro Modo:
				Escribir "Opción incorrecta. Por favor, reingrese: ";
				Leer opcion;
		FinSegun
		
		
	Hasta Que opcion = 9;
	
FinProceso
