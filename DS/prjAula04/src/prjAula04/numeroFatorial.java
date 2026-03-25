package prjAula04;
import java.util.Scanner;
public class numeroFatorial {

	public static void main(String[] args) {
		
		int resultado = fatorial();
		System.out.println("O fatorial do número digitado é: "+resultado);

	}
	
	public static int fatorial () {
		Scanner leia = new Scanner (System.in);
		int  j, num;
		
		System.out.println("Digite o número:");
		num = leia.nextInt();
		
		
			for(j=num-1;j>=1;j--) {
				num = num*j;
			}

			 leia.close();
			
		return num;
		
		
	}

}
