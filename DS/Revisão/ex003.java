import java.util.Scanner;
public class ex003 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		boolean senhaInvalida = true;
		int senha;
		
		while(senhaInvalida==true) {
			System.out.println("Entre com a senha:");
			senha = sc.nextInt();
			
			if(senha!=2002) {
				System.out.println("Senha inválida");
				senhaInvalida = true;
			}else if(senha==2002) {
				System.out.println("Acesso permitido");
				senhaInvalida = false;
			}
			
		}
	}

}
