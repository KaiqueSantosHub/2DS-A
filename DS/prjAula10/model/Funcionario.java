package model;

public abstract class Funcionario {
	
	protected String nome;
	protected int salario;
	protected int idade;
	protected String rg;
	protected String cpf;
	protected String dataContratacao;
	
	public Funcionario(String nome,int salario,  int idade, String rg, String cpf, String dataContratacao) {
		this.nome = nome;
		this.idade = idade;
		this.salario = salario;
		this.rg = rg;
		this.cpf = cpf;
		this.dataContratacao = dataContratacao;
		
	}
	
	public abstract void listarDados();

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public int getSalario() {
		return salario;
	}

	public void setSalario(int salario) {
		this.salario = salario;
	}

	public int getIdade() {
		return idade;
	}

	public void setIdade(int idade) {
		this.idade = idade;
	}

	public String getRg() {
		return rg;
	}

	public void setRg(String rg) {
		this.rg = rg;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getDataContratacao() {
		return dataContratacao;
	}

	public void setDataContratacao(String dataContratacao) {
		this.dataContratacao = dataContratacao;
	}
}
