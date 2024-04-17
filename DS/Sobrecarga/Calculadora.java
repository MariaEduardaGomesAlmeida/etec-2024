import java.util.Scanner;

public class Calculadora {
	Scanner sc = new Scanner(System.in);
	
	private double resultado;
	
	//Soma de inteiros
	public String Somar(int num1, int num2) {
		return "A soma dos n�meros "
				+num1
				+" e "
				+num2
				+" �: "
				+(resultado = num1+num2);
	}
	
	//Soma de decimais
	public String Somar(double num1, double num2) {
		resultado = num1+num2;
		return "A soma dos n�meros "
				+num1
				+" e "
				+num2
				+" �: "
				+(String.format("%.2f", resultado));
	}
	
	//Subtra��o de inteiros
	public String Subtrair(int num1, int num2) {
		return "A subtra��o dos n�meros "
				+num1
				+" e "
				+num2
				+" �: "
				+(resultado = num1-num2);
	}
	
	//Subtra��o de decimais
	public String Subtrair(double num1, double num2) {
		resultado = num1-num2;
		return "A subtra��o dos n�meros "
				+num1
				+" e "
				+num2
				+" �: "
				+(String.format("%.2f", resultado));
	}
	
	//Soma array de inteiros
	public String Soma() {
		System.out.println("Escreva a quantidade de n�meros para a soma de uma array:");
		int tamanhoArray = sc.nextInt();
		
		double array[];
		double soma=0;
		array = new double[tamanhoArray];
		
		for(int i=0; i<tamanhoArray; i++) {
			System.out.println("Entre com o "+(i+1)+"� valor:");
			array[i] = sc.nextDouble();
			soma+=array[i];
		}
		
		resultado = soma;
		
		return "A soma dos n�meros do array �: "
				+(String.format("%.2f", resultado));
	}
	
	public String Subtrair() {
		System.out.println("Escreva a quantidade de n�meros para a subtra��o de uma array:");
		int tamanhoArray = sc.nextInt();
		
		double array[];
		double subtracao=0;
		array = new double[tamanhoArray];
		
		for(int i=0; i<tamanhoArray; i++) {
			System.out.println("Entre com o "+(i+1)+"� valor:");
			array[i] = sc.nextDouble();
			subtracao-=array[i];
		}
		
		resultado = subtracao;
		
		return "A subtra��o dos n�meros do array �: "
				+(String.format("%.2f", resultado));
	}
	
	
	
	
}
