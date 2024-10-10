import java.util.Scanner;
public class Principal {
	public static void main (String [] args) {
		Scanner sc = new Scanner(System.in);
		
		//Conta poupança
		System.out.println("Conta Poupança");
		System.out.println("Qual é o saldo atual da conta poupança?");
		double saldo = sc.nextDouble();
		
		ContaPoupanca conta1 = new ContaPoupanca(saldo);
		
		System.out.println("Insira o valor do saque:");
		double saque = sc.nextDouble();
		
		conta1.Sacar(saque);
		conta1.VerSaldo();
		System.out.println("----");
		
		System.out.println("Insira o valor do deposito:");
		double deposito = sc.nextDouble();
		
		conta1.Depositar(deposito);
		conta1.VerSaldo();
		System.out.println("----");
		
		System.out.println("Insira o valor da taxa de rendimento mensal:");
		double taxaRM = sc.nextDouble();
		
		conta1.rendimentoM(taxaRM);
		System.out.println("----");
		
		//Conta corrente
		System.out.println("Conta Corrente");
		System.out.println("Qual o saldo atual da conta Corrente?");
		double saldo2 = sc.nextDouble();
		
		System.out.println("Qual o valor do limite de cheque especial?");
		double limiteCheque = sc.nextDouble();
		
		ContaCorrente conta2 = new ContaCorrente(saldo2, limiteCheque);
		
		System.out.println("Insira o valor do saque:");
		double saque2 = sc.nextDouble();
		
		 if (saque2 <= saldo + limiteCheque) {
	          saldo2 -= saque2;
	          System.out.println("Saque de R$" + saque2 + " realizado com sucesso.");
	     } else {
	          System.out.println("Não foi possível realizar o saque, valor ultrapassa do limite de cheque especial.");
	     }
		
		conta2.Sacar(saque2);
		conta2.VerSaldo();
		System.out.println("----");
		
		System.out.println("Insira o valor do deposito:");
		double deposito2 = sc.nextDouble();
		
		conta2.Depositar(deposito2);
		conta2.VerSaldo();
		System.out.println("----");
		
		
	} 
}
