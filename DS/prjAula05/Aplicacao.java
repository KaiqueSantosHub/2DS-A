package prjAula05;

public class Aplicacao {

	public static void main(String[] args) {
		
		Pessoa pessoa = new Pessoa();
		
		pessoa.setNome("Oswaldo Pereira Costa da Silva Souza ");
		System.out.println("Nome: "+pessoa.getNome());
		
		pessoa.setIdade(26);
		System.out.println("Idade: "+pessoa.getIdade()+" anos");
		
		pessoa.setCpf("123.559.05-04");
		System.out.println("CPF: "+pessoa.getCpf());
		
		pessoa.setRg("45454545454");
		System.out.println("RG: "+pessoa.getRg());
		
		pessoa.setEstadoNasc("São Paulo");
		System.out.println("Estado de Nascimento: "+pessoa.getEstadoNasc());
		
		pessoa.setCidadeNasc("São José dos Campos");
		System.out.println("Cidade de Nascimento: "+pessoa.getCidadeNasc());
		
		pessoa.setGenero("Masculino");
		System.out.println("Gênero: "+pessoa.getGenero());
		
		pessoa.setEtnia("Negro");
		System.out.println("Etnia: "+pessoa.getEtnia());
		
		pessoa.setNomeMae("Maria da Silva");
		System.out.println("Nome da Mãe: "+pessoa.getNomeMae());
		
		pessoa.setNomePai("Sebastião de Souza");
		System.out.println("Nome do Pai: "+pessoa.getNomePai());


	}

}
