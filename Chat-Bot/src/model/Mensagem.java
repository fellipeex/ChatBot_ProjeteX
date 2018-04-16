package model;

import java.io.Serializable;

public class Mensagem {
	private static final long serialVersionUID = 1L;
	
	private Usuario usuario;
	private int idPergunta;
	private int idPalavraChave;
	private String palavraChave;
	
	public Mensagem() {
		
	}
	
	public Usuario getUsuario() {
		return usuario;
	}
	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}
	public int getIdPergunta() {
		return idPergunta;
	}
	public void setIdPergunta(int idPergunta) {
		this.idPergunta = idPergunta;
	}
	public int getIdPalavraChave() {
		return idPalavraChave;
	}
	public void setIdPalavraChave(int idPalavraChave) {
		this.idPalavraChave = idPalavraChave;
	}
	public String getPalavraChave() {
		return palavraChave;
	}
	public void setPalavraChave(String palavraChave) {
		this.palavraChave = palavraChave;
	}
	
	
	
	
}
