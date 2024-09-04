
public class Veiculo {
	//Atributos
	private String modelo;
	private double valorTabela;
	private String cor;
	private double combustivel;
	private double ipva;
	
	//Construtor
	public Veiculo(String modelo, String cor, double valorTabela, double combustivel) {
		this.modelo = modelo;
		this.valorTabela = valorTabela;
		this.cor = cor;
		this.combustivel = combustivel;
	}
	
	//Métodos
	public void calculaIPVA() {
		
	}
	
	public void imprimirFicha() {
		System.out.println("Modelo: "+this.modelo);
		System.out.println("Valor: "+this.valorTabela);
		System.out.println("Cor: "+this.cor);
		System.out.println("Combustível: "+this.combustivel);
		System.out.println("Ipva: "+this.ipva);
	}
	
	//Getters e Setters
	public String getModelo() {
		return modelo;
	}

	public void setModelo(String modelo) {
		this.modelo = modelo;
	}

	public double getValorTabela() {
		return valorTabela;
	}

	public void setValorTabela(double valorTabela) {
		this.valorTabela = valorTabela;
	}

	public String getCor() {
		return cor;
	}

	public void setCor(String cor) {
		this.cor = cor;
	}

	public double getCombustivel() {
		return combustivel;
	}

	public void setCombustivel(double combustivel) {
		this.combustivel = combustivel;
	}

	public double getIpva() {
		return ipva;
	}

	public void setIpva(double ipva) {
		this.ipva = ipva;
	}
	
}
