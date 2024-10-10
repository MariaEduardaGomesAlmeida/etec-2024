
public abstract class ContaGenerica implements Conta{
	//Atributo
	private double saldo;
	//Construtor
	public ContaGenerica (double saldo) {
		this.saldo = saldo;
	}
	
	//Getters e Setters
	public double getSaldo() {
		return saldo;
	}
	
	public void setSaldo(double saldo) {
		this.saldo = saldo;
	}

	//Métodos
		//Depositar()
		public void Depositar(double valorEntrada) {
			saldo = saldo + valorEntrada;
			System.out.println("O valor de R$"+valorEntrada+" foi depositado com sucesso.");
		}
		
		//Sacar()
		public void Sacar(double valorSaida) {
			saldo = saldo - valorSaida;
			System.out.println("O valor de R$"+valorSaida+" foi sacado com sucesso.");
		}
	
		//VerSaldo()
		public void VerSaldo() {
			System.out.println("Saldo da conta: R$"+this.getSaldo());
		}
}
