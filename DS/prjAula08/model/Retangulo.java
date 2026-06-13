package model;

public class Retangulo extends Forma{

	private double lado;
	private double altura;

	public Retangulo(double lado, double altura) {
		this.lado = lado;
		this.altura = altura;
	}
	
	public double getLado() {
		return lado;
	}


	public void setLado(double lado) {
		this.lado = lado;
	}


	public double getAltura() {
		return altura;
	}


	public void setAltura(double altura) {
		this.altura = altura;
	}
	
	@Override
	public double calcularForma() {
		// TODO Auto-generated method stub
		return altura * lado;
	}


	
}
