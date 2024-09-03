
public class Funcionario {
	//Atributos
	private 	String 	nome; 
	private 	String 	cpf;
	protected 	int		salario;
	
	//Getters e Setters
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCpf() {
		return cpf;
	}
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	public int getSalario() {
		return salario;
	}
	public void setSalario(int salario) {
		this.salario = salario;
	}
	
	//Método que retorna o valor da bonificação do funcionário
	public double getBonificacao() {
		return salario * 0.10;
	}
	
}
