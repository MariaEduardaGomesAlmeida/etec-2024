
public class Gerente extends Funcionario{
	//Atributos
	private int senha;
	
	//Getters e Setters
	public int getSenha() {
		return senha;
	}

	public void setSenha(int senha) {
		this.senha = senha;
	}
	
	//Métodos
	public boolean autentica (int senha) {
		if (this.senha == senha) {
			return true;
		} else {
			return false;
		}
	}
	
	//Método de Bonificação do Gerente
	@Override
	public double getBonificacao() {
		return super.salario*0.15;
	}
	
}
