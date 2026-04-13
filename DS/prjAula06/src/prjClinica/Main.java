package prjClinica;

public class Main {

	public static void main(String[] args) {
		Paciente paciente = new Paciente();
		paciente.setNome("Davi");
		paciente.setCpf("123.456.789-00");
		paciente.setDataNasc("30/04/2009");

		Especialidade clinicoGeral = new Especialidade("Clínico Geral");
		Medico medico = new Medico();
		medico.setNome("Jurandir");
		medico.setCrm("CRM/SP 123456");
		medico.setEspecialidade(clinicoGeral);
		
		Consulta consulta = new Consulta();
		consulta.setPaciente(paciente);
		consulta.setMedico(medico);
		consulta.setHora("08:30");
		consulta.setData("15/04/2026");
		consulta.setStatus("Marcada");
		
		consulta.exibirConsulta();
	}
}
