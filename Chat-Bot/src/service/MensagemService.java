package service;

import dao.MensagemDao;
import model.Mensagem;

public class MensagemService {
	MensagemDao dao = new MensagemDao();
	
	public void criar(Mensagem mensagem) {
		dao.criar(mensagem);
	}
}
