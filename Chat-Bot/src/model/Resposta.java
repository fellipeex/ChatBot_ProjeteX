package model;


public class Resposta extends Mensagem{
	private int idResposta;
	private String resposta;
	
	public Resposta() {
	}

	public int getIdRespostas() {
		return idResposta;
	}

	public void setIdRespostas(int idRespostas) {
		this.idResposta = idRespostas;
	}

	public String getResposta() {
		return resposta;
	}

	public void setResposta(String resposta) {
		this.resposta = resposta;
	}

	public String palChave() {
		// TODO Auto-generated method stub
		return null;
	}
}
