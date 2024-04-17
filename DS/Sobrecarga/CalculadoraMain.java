import java.util.Scanner;

public class CalculadoraMain {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		Calculadora calculadora = new Calculadora();
		
		System.out.println("Escreva o primeiro e segundo n�mero da soma de inteiros:");
		System.out.println(calculadora.Somar(sc.nextInt(), sc.nextInt()));
		
		System.out.println();
		
		System.out.println("Escreva o primeiro e segundo n�mero da soma de decimais:");
		System.out.println(calculadora.Somar(sc.nextDouble(), sc.nextDouble()));
		
		System.out.println();
		
		System.out.println("Escreva o primeiro e segundo n�mero da subtra��o de inteiros:");
		System.out.println(calculadora.Subtrair(sc.nextInt(), sc.nextInt()));
		
		System.out.println();
		
		System.out.println("Escreva o primeiro e segundo n�mero da subtra��o de decimais:");
		System.out.println(calculadora.Subtrair(sc.nextDouble(), sc.nextDouble()));
		
		System.out.println();
		
		System.out.println("Escolha se deseja fazer uma opera��o de subtra��o ou soma em um array (1 para soma, 2 para subtra��o):");
		int resposta = sc.nextInt();
		
		if(resposta == 1) {
			System.out.println(calculadora.Soma());
		}else if(resposta == 2) {
			System.out.println(calculadora.Subtrair());
		}else {
			System.out.println("N�o h� opera��o para esse n�mero");
		}

		
		
		
		
		
	}
}
