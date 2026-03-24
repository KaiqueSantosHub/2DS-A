package prjAula03;
import java.util.Scanner;

public class ValidarIdade {
	
public static void main(String[] args) {
		
		validacaoIdade();
	}
	
	public static void validacaoIdade (){
		Scanner leia = new Scanner (System.in);
		System.out.println("Digite a sua idade:");
		int idade = leia.nextInt();

		if(idade> 17) {
			System.out.println("Maior de idade");
		} else {
			System.out.println("Menor de idade");
		}
	}

	

}
