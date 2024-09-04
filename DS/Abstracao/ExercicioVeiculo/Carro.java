
public class Carro extends Veiculo{
	
	public Carro(String modelo, String cor, double valorTabela, double combustivel) {
		super(modelo, cor, valorTabela, combustivel);
	}

	//Sobrescrita
	@Override
	public void calculaIPVA() {
		double ipva;
		ipva = super.getValorTabela()*(4.0/100.0);
		super.setIpva(ipva);
	}
}
