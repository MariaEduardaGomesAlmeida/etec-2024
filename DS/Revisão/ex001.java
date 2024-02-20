import java.util.Scanner;
public class ex001 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Entre com o número:");
		int num = sc.nextInt();
		
		if(num<0) {
			System.out.println("O número "+num+" é negativo");
		}else if(num>0) {
			System.out.println("O número "+num+" é positivo");
		}
		
	}

}
