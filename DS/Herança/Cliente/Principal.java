package ExercicioCliente;

import java.util.Scanner;

public class Principal {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		Cliente cliente = new Cliente();
		
		cliente.setNome("Ana");
		cliente.setIdade(24);
		cliente.setEndereco("Av. Brasil, 22");
		cliente.setValorPedido(20);
		
		System.out.println(cliente.toString()+"\nValor Promocional: R$"+cliente.calculaDesconto());
		System.out.println("---");
		
		
		
		ClientePremium clientePremium = new ClientePremium();

		clientePremium.setNome("Ricardo");
		clientePremium.setIdade(41);
		clientePremium.setEndereco("Rua Alameda Vitoria, 9");
		clientePremium.setValorPedido(20);
		
		System.out.println(clientePremium.toString()+"\nValor Promocional: R$"+clientePremium.calculaDesconto());
	}

}
