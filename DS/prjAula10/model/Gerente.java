package model;

public class Gerente extends Funcionario {

	public Gerente(String nome, int salario, int idade, String rg, String cpf, String dataContratacao) {
		super(nome, salario, idade, rg, cpf, dataContratacao);
		
	}
	
	public void aprovarFolga (boolean podeFolgar) {
		
		if(podeFolgar) {
			System.out.println("Você pode folgar hoje, meu caro!");
		} else {
			System.out.println("Hoje não vai dar, bora trampar!");
		}
		
	}

	@Override
	public void listarDados() {
		
		System.out.println("===== Gerente =====");
		System.out.println();
		System.out.println("Nome: "+ nome);
		System.out.println("Salário: "+ salario);
		System.out.println("Idade: "+ idade);
		System.out.println("RG: "+ rg);
		System.out.println("CPF: "+ cpf);
		System.out.println("Data de Contratação: "+ dataContratacao);
		
	}
	

}
