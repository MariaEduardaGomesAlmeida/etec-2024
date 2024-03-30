
public class ProdutoMain {
	public static void main(String[] args) {
		Produto produto = new Produto();
		
		produto.setNome("Moletom");
		produto.getNome();
		
		produto.setPrecoVenda(145);
		produto.getPrecoVenda();
		
		produto.setPrecoCusto(130);
		produto.getPrecoCusto();
		
		produto.CalcularMargemLucro();
		produto.getMargemLucro();
		produto.getMargemLucroPercentual();
		
		
	}
	
	
	
}
