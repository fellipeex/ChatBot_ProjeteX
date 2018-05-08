package model;

public class Pergunta extends Mensagem{
	
	
	private int idPergunta;
	private String pergunta;
	private String tipoPergunta;
	
	public Pergunta() {
		
	}
	
	public int getIdPergunta() {
		return idPergunta;
	}

	public void setIdPergunta(int idPergunta) {
		this.idPergunta = idPergunta;
	}

	public String getPergunta() {
		return pergunta;
	}

	public void setPergunta(String pergunta) {
		this.pergunta = pergunta;
	}

	public String getTipoPergunta() {
		return tipoPergunta;
	}

	public void setTipoPergunta(String tipoPergunta) {
		this.tipoPergunta = tipoPergunta;
	}
	
}	
