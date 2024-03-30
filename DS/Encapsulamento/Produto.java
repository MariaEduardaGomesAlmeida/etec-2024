
public class Produto {
	private String nome;
	private double precoCusto;
	private double precoVenda;
	private double margemLucro;
	
	void setNome(String nome) {
		this.nome = nome;
	}
	
	String getNome() {
		return this.nome;
	}
	
	void setPrecoCusto(double precoCusto) {
		this.precoCusto = precoCusto;
	}
	
	double getPrecoCusto() {
		return this.precoCusto;
	}
	
	void setPrecoVenda(double precoVenda) {
		this.precoVenda = precoVenda;
		if(precoVenda<precoCusto) {
			System.out.println("O preço da venda é inferior ao preço do produto.");
		}
	}
	
	double getPrecoVenda() {
		return this.precoVenda;
	}
	
	
	void CalcularMargemLucro() {
		margemLucro = precoVenda-precoCusto;
	}
	
	void getMargemLucroPercentual() {
		System.out.print("O percentual de lucro sobre o "+nome+" é de: "+margemLucro/100*10+"%");
	}
	
	void getMargemLucro() {
		System.out.println("Sua margem de lucro sobre o "+nome+" é de: " + margemLucro);
	}
	
	
	
	
	
	
}
