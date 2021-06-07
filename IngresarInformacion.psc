Algoritmo IngresarInformacion
	
	Escribir "Ingrese la siguiente información"
	Escribir "En caso de ya no querer agregar información ingrese un altura negativa";
	
	PromAlturaMujeres = 0;
	PromAlturaVarones = 0;
	PromEdad = 0;
	CantidadMujeres = 0;
	CantidadVarones = 0;
	CantidadParticipantes = 0;
	
	Repetir
		Escribir "Ingrese la altura";
		Leer Altura;
		Si Altura >= 0 Entonces
			Escribir "Ingrese la Edad"
			Leer Edad;
			Escribir "Ingrese el sexo F (Femenino), M (Masculino)";
			Leer sexo;
			
			Si sexo == 'F' Entonces
				PromAlturaMujeres = PromAlturaMujeres + Altura;
				CantidadMujeres = CantidadMujeres+1;
			SiNo
				PromAlturaVarones = PromAlturaVarones + Altura;
				CantidadVarones = CantidadVarones+1;
			Fin Si
			
			CantidadParticipantes = CantidadParticipantes+1;
			PromEdad = PromEdad+Edad;
		Fin Si
	Hasta Que Altura<0
	
	PromAlturaMujeres = PromAlturaMujeres/CantidadMujeres;
	PromAlturaVarones = PromAlturaVarones/CantidadVarones;
	PromEdad = PromEdad/CantidadParticipantes;
	
	Escribir "El promedio de altura de las mujeres es: ", PromAlturaMujeres;
	Escribir "El promedio de altura de los varones es: ", PromAlturaVarones;
	Escribir "El promedio de edad de todos los participantes es: ", PromEdad;
	
FinAlgoritmo
