package service;

import dao.MensagemDao;
import model.Mensagem;
import model.Pergunta;
import model.Resposta;

public class MensagemService {
	MensagemDao dao = new MensagemDao();
	
	public void criarPergunta(Mensagem mensagem) {
		dao.criarPergunta((Pergunta) mensagem);
	}
	public void criarResposta(Resposta resposta) {
		dao.criarResposta(resposta);
	}
	
	public String buscarPergunta(Resposta resposta) {
		String resultado = dao.buscarPergunta(resposta);
		return resultado;
	}
	
	public String verificarResposta(Resposta resposta) {
		String resultado;
		if(resposta.getResposta() == buscarPergunta(resposta)) {
			resultado = buscarPergunta(resposta);
			return resultado;
		}
		resultado = "Nao entendi o que vc disse, vamos tentar novamente";
		return resultado;
	}
}
