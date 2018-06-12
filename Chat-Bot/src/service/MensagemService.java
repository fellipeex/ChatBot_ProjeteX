package service;

import java.util.ArrayList;

import dao.MensagemDao;
import model.Atendimento;
import model.Pergunta;
import model.Resposta;
import model.Usuario;

public class MensagemService {
	MensagemDao dao = new MensagemDao();
	
	public void criarAtendimento(Atendimento atd) {
		dao.criarAtendimento(atd);
	}
	
	
	public void criarPergunta(Pergunta pergunta) {
		dao.criarPergunta(pergunta);
	}

	public void criarResposta(Resposta resposta, Usuario usuario) {
		dao.criarResposta(resposta, usuario);
	}

	public String buscarPergunta(Resposta resposta) {
		String resultado = dao.buscarPergunta(resposta);
		return resultado;
	}

	public ArrayList<Resposta> verificarResposta(Pergunta pergunta) {
		ArrayList<Resposta> lista_resultado = new ArrayList<Resposta>();
		ArrayList<Resposta> palavras_validas = new ArrayList<Resposta>();
		ArrayList<Resposta> lista_palChave = new ArrayList<Resposta>();
		String[] respostaUser;
		String resultado = null;

		// pega a resposta do usuario e poe em um array
		respostaUser = pergunta.getPergunta().split(" ");
		lista_palChave = dao.carregaPalChave();

		// verifica se a palavra é valida
		for (String r : respostaUser) {
			// compara a reposta do usuario com o array de palavras chaves
			for (Resposta r_pchave : lista_palChave) {
				// coloca a palavra no array
				if (r.equals(r_pchave.getPalavraChave())) {
					palavras_validas.add(r_pchave);
				}
			}
		}

		// coloca a palavra valida no array de resposta da session p o usuario
		if (!palavras_validas.isEmpty()) {
			for (Resposta r : palavras_validas) {
				lista_resultado.add(r);
			}
		} else {
			resultado = "não entendi o que voce disse, podemos começar de novo?";
			Resposta resposta = new Resposta();
			resposta.setResposta(resultado);
			lista_resultado.add(resposta);
		}
		return lista_resultado;
	}


	public ArrayList<Atendimento> criarRelatorio(String peri) {
		ArrayList<Atendimento> lista_relatorio = new ArrayList<Atendimento>();
		if(peri == "sem") {
			lista_relatorio = dao.buscarRelatorioSem();
		}
		if(peri == "dia") {
			lista_relatorio = dao.buscarRelatorioDia();
		}
		if(peri == "mes") {
			lista_relatorio = dao.buscarRel1atorioMes();
		}
		return lista_relatorio;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}