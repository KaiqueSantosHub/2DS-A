package model;

public abstract class Conta {
	
	private String nome;
	private int idade;
	private double saldo;
	
	
	public Conta(String nome, int idade, double saldo) {
		this.nome = nome;
		this.idade = idade;
		this.saldo = saldo;
	}
	
	
	
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public int getIdade() {
		return idade;
	}
	public void setIdade(int idade) {
		this.idade = idade;
	}
	public double getSaldo() {
		return saldo;
	}
	public void setSaldo(double saldo) {
		this.saldo = saldo;
	}
}
