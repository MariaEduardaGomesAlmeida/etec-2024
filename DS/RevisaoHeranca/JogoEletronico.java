
public class JogoEletronico extends Jogo{
	//Atributos
	private String plataforma;
	private String genero;
	
	//Método Construtor
	public JogoEletronico(String nome, double preco, String distribuidora, String plataforma, String genero) {
		super(nome, preco, distribuidora);
		this.plataforma = plataforma;
		this.genero = genero;
	}
	
	//Métodos
	public void jogarOnline(int quantiJogadores) {
		System.out.println("Jogando online com " + quantiJogadores + " jogadores.");
	}

	//Getters e Setters
	public String getPlataforma() {
		return plataforma;
	}

	public void setPlataforma(String plataforma) {
		this.plataforma = plataforma;
	}

	public String getGenero() {
		return genero;
	}

	public void setGenero(String genero) {
		this.genero = genero;
	}
	
	
	
}
