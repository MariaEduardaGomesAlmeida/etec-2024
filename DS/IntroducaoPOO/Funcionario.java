import java.util.Scanner;

public class Funcionario {
	Scanner sc = new Scanner(System.in);
	
	String nome;
	double salarioBruto;
	double imposto;
	
	void lerValores() {
		System.out.println("Escreva o nome do funcionário: ");
		nome = sc.next();
		
		System.out.println("Escreva seu salário bruto: ");
		salarioBruto = sc.nextDouble();
		
		System.out.println("Escreva o valor do imposto: ");
		imposto = sc.nextDouble();
	}
	
	
	String salarioLiquido() {
		return "O salário líquido do "+nome+" é: "+ (salarioBruto-imposto);
	}
	
	String aumentoSalario() {
		System.out.println("Informe o valor do aumento de salário: ");
		double aumento = sc.nextDouble();
		
		return "O salario final do "+nome+" é: "+ ((salarioBruto-imposto)+aumento);
	}

}
