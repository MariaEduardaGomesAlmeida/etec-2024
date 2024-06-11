
public class Main {
	public static void main(String[]args ) {
		//Instâncias
		JogoEletronico jE1 = new JogoEletronico("Minecraft", 110.99, "Mojang", "Minecraft.com", "Aventura");
		JogoEletronico jE2 = new JogoEletronico("BigPaintBall",0.00,"Roblox", "Roblox.com", "Combate");
		JogoFisico jF1 = new JogoFisico("SuperMario", 19.99, "Nitendo", 15, 25);
		JogoFisico jF2 = new JogoFisico("Alladin", 20.62, "Capcom", 1, 30);
		
		//Apresentando
		System.out.println("Nome: "+jE1.getNome()+"\n Preço: "+jE1.getPreco()+"\n Distribuidora: "+jE1.getDistribuidora()+"\n Plataforma: "+jE1.getPlataforma()+"\n Gênero: "+jE1.getGenero());
		System.out.println();
		System.out.println("Nome: "+jE2.getNome()+"\n Preço: "+jE2.getPreco()+"\n Distribuidora: "+jE2.getDistribuidora()+"\n Plataforma: "+jE2.getPlataforma()+"\n Gênero: "+jE2.getGenero());
		System.out.println();
		System.out.println("Nome: "+jF1.getNome()+"\n Preço: "+jF1.getPreco()+"\n Distribuidora: "+jF1.getDistribuidora()+"\n Quantidade de Jogadores: "+jF1.getQuantiJogadores()+"\n Tempo da Partida: "+jF1.getTempoPartida());
		System.out.println();
		System.out.println("Nome: "+jF2.getNome()+"\n Preço: "+jF2.getPreco()+"\n Distribuidora: "+jF2.getDistribuidora()+"\n Quantidade de Jogadores: "+jF2.getQuantiJogadores()+"\n Tempo da Partida: "+jF2.getTempoPartida());
		System.out.println();
		
		//Usando métodos
		jE1.jogarOnline(15);
		System.out.println();
		jE2.jogarOnline(20);
		System.out.println();
		jF1.calcularTempoTotal(3);
		System.out.println();
		jF2.calcularTempoTotal(5);
	}
	
}
