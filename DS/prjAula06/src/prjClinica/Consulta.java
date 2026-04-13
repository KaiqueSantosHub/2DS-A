package prjClinica;

public class Consulta {
	private Paciente paciente;
	private Medico medico;
	private String hora;
	private String data;
	private String status;
	public Consulta() {}

	public Paciente getPaciente() {
		return paciente;
	}
	
	public void setPaciente(Paciente paciente) {
		this.paciente = paciente;
	}

	public Medico getMedico() {
		return medico;
	}
	public void setMedico(Medico medico) {
		this.medico = medico;
	}
	public String getHora() {
		return hora;
	}
	public void setHora(String hora) {
		this.hora = hora;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}

	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	public void exibirConsulta() {
        System.out.println("Consulta agendada");
        System.out.println("Paciente: " + paciente.getNome());
        System.out.println("Médico: " + medico.getNome());
        System.out.println("Especialidade: " + medico.getEspecialidade().getNome());
        System.out.println("Data: " + data);
        System.out.println("Hora: " + hora);
        System.out.println("Status: " + status);
	}
}
