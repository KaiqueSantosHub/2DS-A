package prjAula04;
import java.util.Scanner;

public class SaudacaoUsuario {

	public static void main(String[] args) {
		Scanner leia = new Scanner (System.in);
		String nome;
		
		System.out.println("Digite o seu nome:");
		nome = leia.nextLine();
		
		
		saudacaoPersonalizada(nome);
		 leia.close();

	}
	
	public static void saudacaoPersonalizada (String nome) {
		System.out.println("Óla, "+nome+", seja bem-vindo(a)!");
	}
}
