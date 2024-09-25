public class Serie extends Conteudo{
	//Atributos
	private double duracao;
	private int quantEpisodeos;
	private int quantTemps;
	//Getters & Setters
	public double getDuracao() {
		return duracao;
	}
 
 
	public void setDuracao(double duracao) {
		this.duracao = duracao;
	}
 
 
	public int getQuantEpisodeos() {
		return quantEpisodeos;
	}
 
 
	public void setQuantEpisodeos(int quantEpisodeos) {
		this.quantEpisodeos = quantEpisodeos;
	}
 
 
	public int getQuantTemps() {
		return quantTemps;
	}
 
 
	public void setQuantTemps(int quantTemps) {
		this.quantTemps = quantTemps;
	}
	//Construtor
	public Serie(String titulo, String categoria, double duracao, int quantEpisodeos, int quantTemps) {
		super(titulo, categoria);
		this.duracao = duracao;
		this.quantEpisodeos = quantEpisodeos;
		this.quantTemps = quantTemps;
	}
	//Sobrescrita
		@Override
		public void Descricao() {
			System.out.println("Título: "+super.getTitulo());
			System.out.println("Categoria: "+super.getCategoria());
			System.out.println("Duração: "+this.duracao);
			System.out.println("Quantidade de Episodeos: "+this.quantEpisodeos);
			System.out.println("Quantidade de Temporada:"+this.quantTemps);
		}
 
}