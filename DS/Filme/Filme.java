
public class Filme {
	private String titulo;
	private double duracaoEmMinutos;

	public String getTitulo() {
		return titulo;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public double getDuracaoEmMinutos() {
		return duracaoEmMinutos;
	}

	public void setDuracaoEmMinutos(int duracaoEmMinutos) {
		this.duracaoEmMinutos = duracaoEmMinutos;
	}
	
	public String exibirDuracaoEmHoras() {
		return titulo
				+"("
				+duracaoEmMinutos
				+" minutos): possui "
				+String.format("%.2f", duracaoEmMinutos/60)
				+" horas de duração";
						
	}
	
	
}
