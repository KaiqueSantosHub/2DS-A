package model;

import interfaces.InterfaceCobranca;

public class ImpostoIss implements InterfaceCobranca {
	
	private double taxa;
	private double valorServico;
	
	public ImpostoIss(Double valorServico) {
		this.valorServico = valorServico;
		calcular();
	}
	
	@Override
	public double calcular() {
		taxa = 0.05;
		return valorServico*taxa;
	}

	public double getTaxa() {
		return taxa;
	}

	public void setTaxa(double taxa) {
		this.taxa = taxa;
	}

	public double getValorServico() {
		return valorServico;
	}

	public void setValorServico(double valorServico) {
		this.valorServico = valorServico;
	}  

}
