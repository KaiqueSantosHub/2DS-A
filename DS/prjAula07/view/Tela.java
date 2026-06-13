package view;

import javax.swing.*;
import interfaces.InterfaceCobranca;
import model.ImpostoIcms;



public class Tela extends JFrame {
	
	JTextField campoValor;
	JLabel resultado;
	JButton botao;
	
	public Tela() {			
		
		setTitle("Sistema de Impostos");
		
		setSize(500,400);
		
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		
		setLayout(null);
		
		campoValor = new JTextField();
		campoValor.setBounds(125,50,200,30); //x,y,largura,altura
		add(campoValor);
		
		botao = new JButton("Calcular ICMS");
		botao.setBounds(150,100,150,30);
		add(botao);
		
		resultado = new JLabel();
		resultado.setBounds(200,150,200,30);
		add(resultado);
		
		botao.addActionListener(e -> {
			
			double valor = Double.parseDouble(campoValor.getText());
			
			InterfaceCobranca icms = new ImpostoIcms(valor);
			
			
			resultado.setText("ICMS: "+ icms.calcular());
		});
		
		setVisible(true);
		
	}
	
	

	public static void main(String[] args) {
		new Tela();

	}

}



