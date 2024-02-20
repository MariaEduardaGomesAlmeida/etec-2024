import java.util.Scanner;
public class ex005 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		double matriz[][] = new double[3][4];
		
		for(int i=0; i<3; i++) {
			for(int j=0; j<4; j++) {
				System.out.println("Entre com as notas do aluno "+(i+1)+":");
				matriz[i][j] = sc.nextDouble();
			}
		}
		
		
		
		for(int i=0; i<3; i++) {
			System.out.print("Aluno "+(i+1));
			for(int j=0; j<4; j++) {
				System.out.print(" [" + matriz[i][j]+ "]");
			}
			System.out.println("\n");
		}
		
	}

}
