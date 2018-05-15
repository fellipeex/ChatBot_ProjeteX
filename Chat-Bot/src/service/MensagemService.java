package service;

import java.util.ArrayList;

import dao.MensagemDao;
import model.Pergunta;
import model.Resposta;

public class MensagemService {
	MensagemDao dao = new MensagemDao();

	public void criarPergunta(Pergunta pergunta) {
		dao.criarPergunta(pergunta);
	}

	public void criarResposta(Resposta resposta) {
		dao.criarResposta(resposta);
	}

	public String buscarPergunta(Resposta resposta) {
		String resultado = dao.buscarPergunta(resposta);
		return resultado;
	}

	public ArrayList<Resposta> verificarResposta(Pergunta pergunta) {
		ArrayList<Resposta> lista_resultado = new ArrayList<Resposta>();
		ArrayList<String> palavras_validas = new ArrayList<String>();
		ArrayList<Resposta> lista_palChave = new ArrayList<Resposta>();
		String[] respostaUser;
		String resultado = null;

		// pega a resposta do usuario e poe em um array
		respostaUser = pergunta.getPergunta().split(" ");
		lista_palChave = dao.carregaPalChave();

		for (int j = 0; j < respostaUser.length; j++) {
			String resposta_usuario = respostaUser[j];

			// compara a reposta do usuario com o array de palavras chaves
			for (int i = 0; i < lista_palChave.size(); i++) {
				Resposta resposta_palChave = lista_palChave.get(i);
				if (resposta_usuario == resposta_palChave.getPalavraChave()) {
					String palavra_valida = resposta_palChave.getPalavraChave();
					palavras_validas.add(palavra_valida);
				}
			}
		}

		for (int i = 0; i < palavras_validas.size(); i++) {
			Resposta resposta = new Resposta();
			String palValida = palavras_validas.get(i);
			resposta.setPalavraChave(palValida);
			lista_resultado.add(resposta);
		}
		if (!lista_resultado.isEmpty()) {
			return lista_resultado;
		}
		resultado = "não entendi o que voce disse, podemos começar de novo?";
		Resposta resposta = new Resposta();
		resposta.setResposta(resultado);
		lista_resultado.add(resposta);
		return lista_resultado;

	}
}
