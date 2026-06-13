package principal;

import interfaces.InterfaceCobranca;
import model.ImpostoIcms;
import model.ImpostoIpi;
import model.ImpostoIss;

public class Aplicacao {

	public static void main(String[] args) {
		
		InterfaceCobranca icms = new ImpostoIcms(1050.00);
		InterfaceCobranca iss = new ImpostoIss(250.00);
		InterfaceCobranca ipi = new ImpostoIpi(894.00);
		
		System.out.println("ICMS: "+ icms.calcular());
		System.out.println("ISS: "+ iss.calcular());
		System.out.println("IPI: "+ ipi.calcular());

	}

}
