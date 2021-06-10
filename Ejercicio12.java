import java.util.*;

public class Ejercicio12{

	public static void main(String[] args){

		Scanner entrada = new Scanner(System.in);
		
		int cantParticipantes=0;
		double promAlturaMujeres=0;
		double promAlturaHombres=0;
		int promEdad=0;
		int cantHombres=0;
		int cantMujere=0;

		double altura;

		System.out.println("Ingrese la siguiente información");
		System.out.println("En caso de ya no querer agregar información ingrese un altura negativa");

		do{
			
			String sexo;
			int edad;

			System.out.print("Ingrese la altura: ");
			altura = entrada.nextDouble();

			if(altura >= 0){
				System.out.print("Ingrese la eda: ");
				edad = entrada.nextInt();
				System.out.print("Ingrese el sexo F (femenino) y M (Masculino)");
				sexo = entrada.next();

				if (sexo.equalsIgnoreCase("M")){
					cantHombres++;
					promAlturaHombres += altura;
				} else {
					cantMujere++;
					promAlturaMujeres += altura;
				}

				cantParticipantes++;
				promEdad += edad;
			}
		}while(altura>=0);

		promEdad /= cantParticipantes;
		promAlturaMujeres /= cantMujere;
		promAlturaHombres /= cantHombres;

		System.out.println("El promedio de altura de las mujeres es: "+promAlturaMujeres);
		System.out.println("El promedio de latura de los hombres es: "+promAlturaHombres);
		System.out.println("El promedio de edad de los participantes es; "+promEdad);
	}
}