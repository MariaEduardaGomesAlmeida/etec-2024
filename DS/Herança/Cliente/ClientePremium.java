package ExercicioCliente;

public class ClientePremium extends Cliente{
	
	@Override
	public double calculaDesconto() {
		double aux = 0.15*super.getValorPedido();
		return super.getValorPedido() - aux;
	}
}
