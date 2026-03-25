package prjAula04;
import java.util.Scanner;
public class Menu {

	public static void main(String[] args) {
		exibirMenu();
		

		
		
	}
	
	public static void exibirMenu () {
		Scanner leia = new Scanner (System.in);
		int num;
		
		
		do {
			
			System.out.println("====================================================================================");
			System.out.println();
			
		System.out.println("1 - Retângulo");
		System.out.println("2 - Triângulo");
		System.out.println("3 - Círculo");
		System.out.println("4 - Losango");
		System.out.println("5 - Sair");
		
		System.out.println();
		
		System.out.println("Digite um número, de acordo com a sua opção:");
		num = leia.nextInt();
		
		 switch (num) {
			case 1:
				retangulo();
				break;
			case 2:
				triangulo();
				break;
			case 3:
				circulo();
				break;
			case 4:
				losango();
				break;
			case 5:
				System.out.println("===============================================================================================");
			    System.out.println("VOCÊ SAIU COM SUCESSO!");
			    break;
			    
			default:
				System.out.println("Opção inválida");	
				break;
	 }
		}while(num!=5);
		
		 
	
		 leia.close();
		
				
	}
	
	public static void retangulo () {
		System.out.println("    RETÂNGULO:");
		System.out.println();
		System.out.println("    -> Possui 4 lados");
		System.out.println("    -> Lados opostos são iguais");
		System.out.println("    -> Todos os ângulos são de 90°");
		System.out.println("    -> Área = base x altura");
		System.out.println("    -> Perímetro = 2 x (base + altura)");

		
	}
	
		public static void triangulo () {
			System.out.println("    TRIÂMGULO:");
			System.out.println();
			System.out.println("    -> Possui 3 lados");
			System.out.println("    -> A soma dos ângulos internos é 180°");
			System.out.println("    -> Pode ser equilátero, isósceles ou escaleno");
			System.out.println("    -> Área = (base x altura) / 2");
			System.out.println("    -> Perímetro = soma dos lados");

		}

			public static void circulo () {
				System.out.println("     CÍRCULO:");
				System.out.println();
				System.out.println("    -> Não possui lados (é uma figura curva)");
				System.out.println("    -> Possui raio e diâmetro");
				System.out.println("    -> Diâmetro = 2 x raio");
				System.out.println("    -> Área = π x raio²");
				System.out.println("    -> Circunferência = 2 x π x raio");

	
				}

				public static void losango () {
					System.out.println("    LOSANGO:");
					System.out.println();
					System.out.println("    -> Possui 4 lados iguais");
					System.out.println("    -> Ângulos opostos são iguais");
					System.out.println("    -> Diagonais se cruzam no meio");
					System.out.println("    -> Área = (diagonal maior x diagonal menor) / 2");
					System.out.println("    -> Perímetro = 4 x lado");

	
					}
	
	


}
