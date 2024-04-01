
public class Produto {
	private String nome;
	private double precoCusto;
	private double precoVenda;
	private double margemLucro;
	private double margemLucroPercentual;
	
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public String getNome() {
		return this.nome;
	}
	
	public void setPrecoCusto(double precoCusto) {
		this.precoCusto = precoCusto;
	}
	
	public double getPrecoCusto() {
		return this.precoCusto;
	}
	
	public void setPrecoVenda(double precoVenda) {
		this.precoVenda = precoVenda;
		if(precoVenda<precoCusto) {
			System.out.println("O preço da venda é inferior ao preço do produto.");
		}
	}
	
	public double getPrecoVenda() {
		return this.precoVenda;
	}
	
	
	public void CalculaMargemLucro() {
		margemLucro = precoVenda-precoCusto;
		System.out.println("A margem de lucro foi de: "+margemLucro);
	}
	
	public void margemLucroPercentual() {
		margemLucroPercentual = margemLucro/precoVenda*100;
		System.out.printf("O percentual de lucro é: %.2f",margemLucroPercentual);
		System.out.println("%");
	}
	
	
	
	
	
	
	
}
