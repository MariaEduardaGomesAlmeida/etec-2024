package ExercicioVeiculo;

public class Principal {
	public static void main(String[] args) {
		
		Carro carro = new Carro();
		
		carro.setModelo("Gol bolinha");
		carro.setMarca("VolksWagen");
		carro.setAno(1999);
		carro.setCor("Cinza");
		carro.setQtdPortas(4);
		
		Moto moto = new Moto();
		
		moto.setModelo("Cx Roadster");
		moto.setMarca("Harley Davidson");
		moto.setAno(2018);
		moto.setCor("Cinza");
		moto.setCilindrada(1200);
		
		System.out.println(carro.toString()+"Quantidade de portas: "+carro.getQtdPortas());
		System.out.println("-----");
		System.out.println(moto.toString()+"Cilindrada: "+moto.getCilindrada());
		
	}

}
