import java.util.Scanner;
public class imc {
	Scanner sc = new Scanner(System.in);
	
	String nome;
	int idade;
	double peso, altura, valorIMC;
	
	void lerValores() {
		System.out.println("Digite seu nome:");
		nome = sc.next();
		
		System.out.println("Digite sua idade:");
		idade = sc.nextInt();
		
		System.out.println("Digite sua altura para o c�lculo do IMC:");
		altura = sc.nextDouble();
		
		System.out.println("Digite seu peso para o c�lculo do IMC:");
		peso = sc.nextDouble();
	}
	
	
	void CalculoIMC() {
		valorIMC = peso/(altura*altura);
	}
	
	void ImprimeIMC() {
		if(valorIMC<=18.5) {
			System.out.print(nome+", voc� est� abaixo do peso IMC! ");
			System.out.printf("Seu IMC � %.2f", valorIMC);
		}else if(valorIMC>18.5 && valorIMC<=24.9) {
			System.out.print(nome+", voc� est� com o peso ideal! ");
			System.out.printf("Seu IMC � %.2f", valorIMC);
		}else if(valorIMC>24.9 && valorIMC<=29.9) {
			System.out.print(nome+", voc� est� sobrepeso! ");
			System.out.printf("Seu IMC � %.2f", valorIMC);
		}else if(valorIMC>29.9 && valorIMC<=34.9) {
			System.out.print(nome+", voc� est� com obesidade grau 1! ");
			System.out.printf("Seu IMC � %.2f", valorIMC);
		}else if(valorIMC>34.9 && valorIMC <=39.9) {
			System.out.print(nome+", voc� est� com obesidade grau 2! ");
			System.out.printf("Seu IMC � %.2f", valorIMC);
		}else if(valorIMC>39.9) {
			System.out.print(nome+", voc� est� com obesidade grau 3! ");
			System.out.printf("Seu IMC � %.2f", valorIMC);
		}
	}
	
}
