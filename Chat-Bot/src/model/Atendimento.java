package model;

import java.io.Serializable;

public class Atendimento implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private int id;
	private String data;
	private String tentativas;
	private String encaminhado;
	private int interacao;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public String getTentativas() {
		return tentativas;
	}
	public void setTentativas(String tentativas) {
		this.tentativas = tentativas;
	}
	public String getEncaminhado() {
		return encaminhado;
	}
	public void setEncaminhado(String encaminhado) {
		this.encaminhado = encaminhado;
	}
	public int getInteracao() {
		return interacao;
	}
	public void setInteracao(int interacao) {
		this.interacao = interacao;
	}

	
}
