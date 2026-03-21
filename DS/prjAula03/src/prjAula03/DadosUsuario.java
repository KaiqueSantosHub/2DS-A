package prjAula03;
import java.util.Scanner;

public class DadosUsuario {

	public static void main(String[] args) {
		int idade;
		double peso;
		String nome, email; 
		Scanner leia = new Scanner (System.in);
		
		System.out.println("Digite seu nome:");
		nome = leia.nextLine();
		
		System.out.println("Digite seu E-mail:");
		email = leia.next();
		
		System.out.println("Digite sua idade:");
		idade = leia.nextInt();
		
		System.out.println("Digite seu peso:");
		peso = leia.nextDouble();
		
		System.out.println();
		System.out.println();
		
		
		exibirDados(nome, email, idade, peso);
		
		leia.close();

	}
	
	public static void exibirDados (String nome, String email, int idade, double peso) {
		nome =nome.toUpperCase();
		System.out.println("Nome: "+nome);
		
		email = email.toLowerCase();
		System.out.println("E-mail: "+email);
		
		System.out.println("Idade: "+idade);
		
		System.out.printf("Peso: %.2f%n ", peso);
		
		
	}
}

