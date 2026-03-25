	package prjAula04;
	import java.util.Random;
	import java.util.Scanner;
	public class SorteioNumero {
	
		public static int[] lerNumero() {
			  int a,  b;
				Scanner leia = new Scanner (System.in);
				
				System.out.println();
				
				System.out.println("----------------ESCOLHA 2 NÚMEROS E TESTE SUA SORTE -------------------");
				System.out.println();
				
				System.out.println("DIGITE DOIS NÚMEROS DE 1 A 10 PARA SER SORTEADO:");
				System.out.println();
				
				System.out.println("1º número:");
				a = leia.nextInt();
				
				System.out.println("2º número:");
				b = leia.nextInt();
				
				if (a>10 || b>10 ) {
					a = 10;
					b = 10;
				} 
				
				if (a<1 || b<1 ) {
					a = 1;
					b = 1;
				} 
				
				
						
		return new int[] {a, b};
				
				
				 
		
			
		}
		
		public static int[] sorteio () {
			

			Random random = new Random();
			int sort1, sort2;
			
			sort1 = random.nextInt(10)+1;
			sort2 = random.nextInt(10)+1;
			
			return new int[] {sort1,sort2};
			
			
		}
		

			
	
		public static void main(String[] args) {
			
			int numLeitura[] = lerNumero();
			
			
			int numSorteio[]  = sorteio();
			
			System.out.println("Os números sorteados foram: "+numSorteio[0]+ " e "+ numSorteio[1]);
			
			System.out.println();
			
			if(numLeitura[0] == numSorteio[0] || numLeitura[0] == numSorteio[1] || numLeitura[1] == numSorteio[0] || numLeitura[1] == numSorteio[1]) {
				System.out.println("Você acertou o 1 número!");
			} else if (numLeitura[0] == numSorteio[0] || numLeitura[0] == numSorteio[1] && numLeitura[1] == numSorteio[0] || numLeitura[1] == numSorteio[1]) {
				System.out.println("Você acertou os 2 números! Parabéns!");
			} else {
				System.out.println("Infelizmente você errou os dois! 😔");
			}
			
			 
			
			
	
		}
		
	
	}
	
