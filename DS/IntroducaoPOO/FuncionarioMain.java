
public class FuncionarioMain {
	public static void main(String[] args) {
		Funcionario funcionario1 = new Funcionario();
		
		funcionario1.lerValores();
		System.out.println(funcionario1.salarioLiquido());
		System.out.println(funcionario1.aumentoSalario());
		
		System.out.println("--------------");
		
		Funcionario funcionario2 = new Funcionario();
		
		funcionario2.lerValores();
		System.out.println(funcionario2.salarioLiquido());
		System.out.println(funcionario2.aumentoSalario());
		
	}

}
