	package prjAula04;
	import java.util.Random;
	import java.util.Scanner;
	public class SorteioNumero {
	
		public static void lerNumero () {
			
				Scanner leia = new Scanner (System.in);
				
				int a, b;
				
				System.out.println("----------------ESCOLHA 2 NÚMEROS E TESTE SUA SORTE -------------------");
				System.out.println();
				
				System.out.println("DIGITE DOIS NÚMEROS DE 1 A 10 PARA SER SORTEADO:");
				System.out.println();
				
				System.out.println("1º número:");
				a = leia.nextInt();
				
				System.out.println("2º número:");
				b = leia.nextInt();
				
				
				 leia.close();
		
			
		}
		
		public static int[] sorteio () {
			
			Random random = new Random();
			int sort1, sort2;
			
			sort1 = random.nextInt(20)+1;
			sort2 = random.nextInt(20)+1;
			
			return new int[] {sort1,sort2};
			
			
		}
		

			
	
		public static void main(String[] args) {
			
	
		}
		
	
	}
	
