package prjAula05;

public class Pessoa {

	private String nome;
	private int idade;
	private String cpf;
	private String rg;
	private String estadoNasc;
	private String cidadeNasc;
	private String genero;
	private String etnia;
	private String nomeMae;
	private String nomePai;

	// SET
	// --------------------------------------------------------------------------------------------------------

	public void setNome(String nome) {
		
		if(nome.length()>=3) {
			this.nome = nome;
		} else {
			System.out.println("Nome inválido");
		}
		
		
	}

	public void setIdade(int idade) {
		if (idade > 0 && idade < 120) {
			this.idade = idade;
		} else {
			System.out.println("Idade inválida");
		}
	}

	public void setCpf(String cpf) {
		if (cpf.length() < 15) {
			this.cpf = cpf;
		} else {
			System.out.println("CPF inválido");
		}
	}

	public void setRg(String rg) {
		if (rg.length() < 15) {
			this.rg = rg;
		}
	}

	public void setEstadoNasc(String estadoNasc) {

		this.estadoNasc = estadoNasc;
	}

	public void setCidadeNasc(String cidadeNasc) {

		this.cidadeNasc = cidadeNasc;
	}

	public void setGenero(String genero) {

		this.genero = genero;
	}

	public void setEtnia(String etnia) {

		this.etnia = etnia;
	}

	public void setNomeMae(String nomeMae) {

		this.nomeMae = nomeMae;

	}

	public void setNomePai(String nomePai) {

		this.nomePai = nomePai;

	}

	// SET
	// --------------------------------------------------------------------------------------------------------

	// GET
	// ========================================================================================================

	public String getNome() {
		return nome;
	}

	public int getIdade() {
		return idade;
	}

	public String getCpf() {
		return cpf;
	}

	public String getRg() {
		return rg;
	}

	public String getEstadoNasc() {
		return estadoNasc;
	}

	public String getCidadeNasc() {
		return cidadeNasc;
	}

	public String getGenero() {
		return genero;
	}

	public String getEtnia() {
		return etnia;
	}

	public String getNomeMae() {
		return nomeMae;
	}

	public String getNomePai() {
		return nomePai;
	}

}
