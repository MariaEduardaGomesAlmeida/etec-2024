package ExercicioVeiculo;

public class Veiculo {
	private String marca;
	private String modelo;
	private int ano;
	private String cor;
	
	
	public String getMarca() {
		return marca;
	}
	public void setMarca(String marca) {
		this.marca = marca;
	}
	public String getModelo() {
		return modelo;
	}
	public void setModelo(String modelo) {
		this.modelo = modelo;
	}
	public int getAno() {
		return ano;
	}
	public void setAno(int ano) {
		this.ano = ano;
	}
	public String getCor() {
		return cor;
	}
	public void setCor(String cor) {
		this.cor = cor;
	}
	
	
	public String toString() {
		return " Marca: "
				+marca
				+"\n Modelo: "
				+modelo
				+"\n Ano: "
				+ano
				+"\n Cor: "
				+cor
				+"\n ";
	}
	
	

}
