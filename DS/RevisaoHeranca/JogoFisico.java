
public class JogoFisico extends Jogo{
	//Atributos
	private int quantiJogadores;
	private double tempoPartida;
	
	//Método Construtor
	public JogoFisico(String nome, double preco, String distribuidora,int quantiJogadores, double tempoPartida) {
		super(nome, preco, distribuidora);
		this.quantiJogadores = quantiJogadores;
		this.tempoPartida = tempoPartida;
	}
	//Métodos
	public void calcularTempoTotal(int quantiPartidas) {
		double tempoTotal = quantiPartidas * this.tempoPartida;
		System.out.println("Tempo Total: " + tempoTotal + " minutos.");
	}

	//Getters e Setters
	public int getQuantiJogadores() {
		return quantiJogadores;
	}

	public void setQuantiJogadores(int quantiJogadores) {
		this.quantiJogadores = quantiJogadores;
	}

	public double getTempoPartida() {
		return tempoPartida;
	}

	public void setTempoPartida(double tempoPartida) {
		this.tempoPartida = tempoPartida;
	}
	
	
	
}
