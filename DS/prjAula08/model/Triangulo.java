package model;

public class Triangulo extends Forma {
	
	private double lado;
	private double altura;
	
	
	public Triangulo(double lado, double altura) {
		this.altura = altura;
		this.lado = lado;
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
		return lado * altura / 2;
	}

	
	
	
	
}
