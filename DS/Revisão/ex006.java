import java.util.Scanner;
public class ex006 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int vetor[] = new int [6];
		
		for(int i=0; i<vetor.length; i++) {
			System.out.println("Entre com o "+(i+1)+"º valor:");
			vetor[i] = sc.nextInt();
		}
		
		for(int i=0; i<vetor.length; i++) {
			System.out.println("Na posição "+i+" temos o valor "+vetor[i]);
		}
		
	}
}
