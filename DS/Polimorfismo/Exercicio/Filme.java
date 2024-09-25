public class Filme extends Conteudo{
	//Atributos
	private double duracao;
	//Getters & Setters
	public double getDuracao() {
		return duracao;
	}
 
	public void setDuracao(double duracao) {
		this.duracao = duracao;
	}
	//Construtor
	public Filme(String titulo, String categoria, double duracao) {
		super(titulo, categoria);
		this.duracao = duracao;	
	}
	//Sobrescrita
	@Override
	public void Descricao() {
		System.out.println("Título: "+super.getTitulo());
		System.out.println("Categoria: "+super.getCategoria());
		System.out.println("Duração: "+this.duracao);
	}

}