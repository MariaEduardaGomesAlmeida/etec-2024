
public class ContaPoupanca extends ContaGenerica{
	//Construtor
		public ContaPoupanca(double saldo) {
			super(saldo);
		}

		//Métodos
		public void rendimentoM(double taxaRM) {
			double Rendimento = getSaldo() * taxaRM;
			double SaldoRM = getSaldo() + Rendimento;
			setSaldo(SaldoRM);
			System.out.println("Taxa de Redimento Mensal aplicada ao saldo de sua conta com sucesso!");
			System.out.println("Valor do Rendimento: R$"+Rendimento);
			System.out.println("Saldo em conta: R$"+getSaldo());
		}
		
		public void Depositar() {
			
			
		}

		
		public void Sacar() {
			
			
		}
}
