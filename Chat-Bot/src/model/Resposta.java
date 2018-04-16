package model;

public class Resposta extends Mensagem{
	private int idRespostas;
	private String resposta;
	
	public Resposta() {
	}

	public int getIdRespostas() {
		return idRespostas;
	}

	public void setIdRespostas(int idRespostas) {
		this.idRespostas = idRespostas;
	}

	public String getResposta() {
		return resposta;
	}

	public void setResposta(String resposta) {
		this.resposta = resposta;
	}
	
	
	
}
