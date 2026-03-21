package prjAula03;
import java.util.Scanner;

public class NomeInvalido {

	public static void ValidarNome (String nome) {
		if(nome.length()<3) {
			System.out.println("Nome inválido");
		} else {
			System.out.println("Nome válido: "+nome);
		}

	}
	
	public static void main(String[] args) {
		Scanner leia = new Scanner (System.in);
		System.out.println("Digite seu nome:");
		String nome = leia.next();
		
		ValidarNome(nome);
		
	}

}
