import java.util.Scanner;
public class ProdutoMain {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		Produto produto = new Produto();
		
		System.out.println("Informe o nome do produto:");
		produto.setNome(sc.next());
		
		System.out.println("Informe o valor do produto:");
		produto.setPrecoCusto(sc.nextDouble());
		
		System.out.println("Informe o valor final da venda:");
		produto.setPrecoVenda( sc.nextDouble());
		
		double precoCusto = produto.getPrecoCusto();
		double precoVenda = produto.getPrecoVenda();
		
		if(precoVenda > precoCusto) {
			produto.CalculaMargemLucro();
			produto.margemLucroPercentual();
		}
		
		
	}
	
	
	
}
