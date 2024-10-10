
public class ContaCorrente extends ContaGenerica{
	private double limiteCheque;
	
	//Construtor
	public ContaCorrente(double saldo, double limiteCheque) {
		super(saldo);
		this.limiteCheque = limiteCheque;
	}

	
	//Método
	public double getLimiteCheque() {
		return limiteCheque;
	}

	public void setLimiteCheque(double limiteCheque) {
		this.limiteCheque = limiteCheque;
	}


	public void Depositar() {
		
	}


	public void Sacar() {
		
	}

}
