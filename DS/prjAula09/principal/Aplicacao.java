package principal;

import model.Conta;
import model.Corrente;
import model.Digital;
import model.Poupanca;

public class Aplicacao {

	public static void main(String[] args) {
		
		
		
		Conta[] contas = {
				
		new Digital("Elvis Porteiro", 17, 85000),
	    new Digital("Danilo Gentilli", 85, 1600),
		
		new Poupanca("Tom de Moletom", 35, 15000),
		new Poupanca("Dilera", 45, 7500),
		
		new Corrente("Diguinho Coruja", 25, 50),
		new Corrente("Rodrigão", 31, 9000)
		};
		
		
		for(int i = 0;i < contas.length;i++) {
			
			Conta conta = contas[i];
			
			System.out.println("Nome: " + conta.getNome());
			System.out.println("Idade: " +conta.getIdade());
			System.out.println("Saldo: R$" +conta.getSaldo());
			
			System.out.println("------------------------");
			
			
		}
		
		
		
		
	}

}
