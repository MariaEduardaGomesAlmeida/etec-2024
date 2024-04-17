import java.util.Scanner;

public class CalculadoraMain {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		Calculadora calculadora = new Calculadora();
		
		System.out.println("Escreva o primeiro e segundo número da soma de inteiros:");
		System.out.println(calculadora.Somar(sc.nextInt(), sc.nextInt()));
		
		System.out.println();
		
		System.out.println("Escreva o primeiro e segundo número da soma de decimais:");
		System.out.println(calculadora.Somar(sc.nextDouble(), sc.nextDouble()));
		
		System.out.println();
		
		System.out.println("Escreva o primeiro e segundo número da subtração de inteiros:");
		System.out.println(calculadora.Subtrair(sc.nextInt(), sc.nextInt()));
		
		System.out.println();
		
		System.out.println("Escreva o primeiro e segundo número da subtração de decimais:");
		System.out.println(calculadora.Subtrair(sc.nextDouble(), sc.nextDouble()));
		
		System.out.println();
		
		System.out.println("Escolha se deseja fazer uma operação de subtração ou soma em um array (1 para soma, 2 para subtração):");
		int resposta = sc.nextInt();
		
		if(resposta == 1) {
			System.out.println(calculadora.Soma());
		}else if(resposta == 2) {
			System.out.println(calculadora.Subtrair());
		}else {
			System.out.println("Não há operação para esse número");
		}

		
		
		
		
		
	}
}
