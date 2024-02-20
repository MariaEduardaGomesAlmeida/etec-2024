import java.util.Scanner;
public class ex004 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		String resposta = "sim";
		int anoNasc, anoAtual, idade;
		
		while(resposta.equalsIgnoreCase("sim")) {
			System.out.println("Escreva o ano de nascimento:");
			anoNasc = sc.nextInt();
			
			System.out.println("Escreva o ano atual:");
			anoAtual = sc.nextInt();
			
			idade = anoAtual-anoNasc;
			
			if(idade>18) {
				System.out.println("Maior de idade");
			}else if(idade<18) {
				System.out.println("Menor de idade");
			}
			
			System.out.println("Deseja calcular outra idade?");
			resposta = sc.next();
			
		}
		
	}

}
