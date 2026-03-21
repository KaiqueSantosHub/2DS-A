package prjAula03;
import java.util.Scanner;

public class CepUsuario {

	public static void main(String[] args) {
		formatacaoCep();
	}
	
	public static void formatacaoCep () {
		Scanner leia = new Scanner (System.in);
		
		String cep;
		
		System.out.println("Digite o seu CEP:");
		cep = leia.next();
		
		if(cep.length()<8) {
			System.out.println("ERRO: CEP está com números insuficientes");
		}  else if (cep.length()>8) {
			System.out.println("ERRO: CEP está com números a mais");
		}else {
			System.out.printf("CEP: %s-%s%n ", cep.substring(0,5), cep.substring(5));
		}
		
		
	}
	

}
