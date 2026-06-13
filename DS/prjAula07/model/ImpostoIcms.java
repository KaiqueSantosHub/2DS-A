package model;

import interfaces.InterfaceCobranca;

public class ImpostoIcms implements InterfaceCobranca {
	
	private double taxa;
	private double valorServico;
	
	public ImpostoIcms(Double valorServico) {
		this.valorServico = valorServico;
		calcular();
	}
	
	@Override
	public double calcular() {
		taxa = 0.18;
		return valorServico*taxa;
	}  	
	
	//Getters e Setters
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
