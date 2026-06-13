package model;

public class Assistente extends Funcionario {

	public Assistente(String nome, int salario, int idade, String rg, String cpf, String dataContratacao) {
		super(nome, salario, idade, rg, cpf, dataContratacao);
	}
	
	@Override
	public void listarDados() {
		
		System.out.println("===== Assistente =====");
		System.out.println();
		System.out.println("Nome: "+ nome);
		System.out.println("Salário: "+ salario);
		System.out.println("Idade: "+ idade);
		System.out.println("RG: "+ rg);
		System.out.println("CPF: "+ cpf);
		System.out.println("Data de Contratação: "+ dataContratacao);

		
	}

}
