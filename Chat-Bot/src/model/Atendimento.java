package model;

import java.io.Serializable;
import java.util.Calendar;

public class Atendimento implements Serializable{
	private static final long serialVersionUID = 1L;
	
	private int id;
	private String data;
	private int tentativas;
	private String encaminhado;
	private String interacao;
	private String duracao;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDuracao() {
		return duracao;
	}
	public String getData() {
		return data;
	}
	public void setData(String pdata) {
		this.data = pdata;
	}
	public int getTentativas() {
		return tentativas;
	}
	public void setTentativas(int i) {
		this.tentativas = i;
	}
	public String getEncaminhado() {
		return encaminhado;
	}
	public void setEncaminhado(String encaminhado) {
		this.encaminhado = encaminhado;
	}
	public String getInteracao() {
		return interacao;
	}
	public void setInteracao(String string) {
		this.interacao = string;
	}
	public void setDuracao(String duracao) {
		this.duracao = duracao;
	}

	
}
