
public class QuadradoMain {
	public static void main(String[] args) {
		Quadrado quadrado1 = new Quadrado();
		
		quadrado1.altura = 5.5;
		quadrado1.base = 10;
		System.out.println(quadrado1.calcularArea());
		
		System.out.println("----------");
		
		Quadrado quadrado2 = new Quadrado();
		
		quadrado2.altura = 4;
		quadrado2.base = 8.5;
		System.out.println(quadrado2.calcularArea());
	}
}
