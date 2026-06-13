package principal;

import model.Assistente;
import model.Gerente;

public class Aplicacao {

	public static void main(String[] args) {
		
		Gerente gerente = new Gerente(
				"Tarcisio do Acordeon", 
				8500, 
				42, 
				"41.990.202-8", 
				"186.830.160-56", 
				"18/09/2000"
		);
		
		Assistente assistente = new Assistente(
				"Devinho Novaes", 
				2000, 
				35, 
				"32.124.744-9", 
				"207.419.250-95", 
				"06/02/2010"
		);
		
		gerente.listarDados();
		System.out.println();
		gerente.aprovarFolga(true);
		
		System.out.println("---------------------------------");
		
		assistente.listarDados();
		
		
		
	}

}
