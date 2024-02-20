import java.util.Scanner;
public class ex002 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Entre com o número:");
		int num = sc.nextInt();
		
		if(num%2==0) {
			System.out.println("O número "+num+" é par");
		}else if(num%2!=0) {
			System.out.println("O número "+num+" é ímpar");
		}
	}

}
