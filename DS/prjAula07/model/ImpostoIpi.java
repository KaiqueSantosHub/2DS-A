package model;

import interfaces.InterfaceCobranca;

public class ImpostoIpi implements InterfaceCobranca {
	
	private double taxa;
	private double valorServico;
	
	public ImpostoIpi(Double valorServico) {
		this.valorServico = valorServico;
		calcular();
	}
	
	@Override
	public double calcular() {
		taxa = 0.10;
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
