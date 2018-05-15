package command;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Pergunta;
import model.Resposta;
import service.MensagemService;

public class CriarResposta implements Command {

	@Override
	public void executar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String pMensagem = request.getParameter("resposta");

		Pergunta pergunta = new Pergunta();
		pergunta.setPergunta(pMensagem);

		MensagemService rs = new MensagemService();

		RequestDispatcher view = null;
		HttpSession session = request.getSession();

		// cria a pergunta do usuario
		@SuppressWarnings("unchecked")
		ArrayList<Pergunta> lista_pergunta = (ArrayList<Pergunta>) session.getAttribute("lista_pergunta");
		if (lista_pergunta != null) {
			lista_pergunta.add(pergunta);
		} else {
			lista_pergunta = new ArrayList<Pergunta>();
			lista_pergunta.add(pergunta);
		}
		
		session.setAttribute("lista_pergunta", lista_pergunta);
		view = request.getRequestDispatcher("tela-chat-bot.jsp");

		// verifica a resposta para pergunta do usuario
		Resposta resposta = new Resposta();
		ArrayList<Resposta> resultado_respostas = rs.verificarResposta(pergunta);

		// coloca as perguntas que estao na session em um array
		@SuppressWarnings("unchecked")
		ArrayList<Resposta> lista_resposta = (ArrayList<Resposta>) session.getAttribute("lista_resposta");

		// vendo o tamanho do vetor de resposta e adicionando uma a mais do que esta na
		// em seguida ja adiciona na session a lista
		if (lista_resposta != null) {
			int tamanhoArray = lista_resposta.size();
			for (int i = 0; i < tamanhoArray; i++) {
				Resposta respostaInserir;
				//verifica se a posição do array nao vai dar erro
				if(tamanhoArray == 0) {
					respostaInserir = resultado_respostas.get(0);
				}else if (resultado_respostas.size() != 0){
					respostaInserir = resultado_respostas.get(i);
				}else {
					respostaInserir = resultado_respostas.get(0);
				}
				lista_resposta.add(respostaInserir);
			}
		} else {
			resposta = resultado_respostas.get(0);
			lista_resposta = new ArrayList<Resposta>();
			lista_resposta.add(0, resposta);
		}

		// adiciona a resposta do sistema na session
		session.setAttribute("lista_resposta", lista_resposta);
		view.forward(request, response);

	}

}
