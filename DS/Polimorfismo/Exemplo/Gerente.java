
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
	
	//M�todos
	public boolean autentica (int senha) {
		if (this.senha == senha) {
			return true;
		} else {
			return false;
		}
	}
	
	//M�todo de Bonifica��o do Gerente
	@Override
	public double getBonificacao() {
		return super.salario*0.15;
	}
	
}
