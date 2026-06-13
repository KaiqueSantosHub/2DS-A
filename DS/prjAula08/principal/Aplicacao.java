package principal;
import model.Quadrado;
import model.Retangulo;
import model.Triangulo;

public class Aplicacao {
	
	public static void main(String[] args) { 
		
	Triangulo areaTriangulo = new Triangulo(20, 20);
	Quadrado areaQuadrado = new Quadrado(20);
	Retangulo areaRetangulo = new Retangulo(8, 15);
	
	System.out.println("Área do Triângulo: " + areaTriangulo.calcularForma());
	System.out.println("Área do Quadrado: " + areaQuadrado.calcularForma());
	System.out.println("Área do Retângulo: " + areaRetangulo.calcularForma());
	
	
	
	}
	
	
	
	
}
