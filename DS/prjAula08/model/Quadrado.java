package model;

public class Quadrado extends Forma {

	private double lado;
	
	public  Quadrado(double lado) {
		this.lado = lado;
	}
	
	public double getLado() {
		return lado;
	}


	public void setLado(double lado) {
		this.lado = lado;
	}

	
	@Override
	public double calcularForma() {
		// TODO Auto-generated method stub
		return Math.pow(lado, 2);
	}


	
}
