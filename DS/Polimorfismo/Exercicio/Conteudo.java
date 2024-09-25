public class Conteudo {
	//Atributos
	private String titulo; 
	private String categoria;
	//Getters & Setters
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	public String getCategoria() {
		return categoria;
	}
	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}
	//Construtor
	public Conteudo(String titulo, String categoria) {
		this.titulo = titulo;
		this.categoria = categoria;
	}
	//Métodos
	public void Descricao() {
		System.out.println("Título: "+this.titulo);
		System.out.println("Categoria: "+this.categoria);
	}
}