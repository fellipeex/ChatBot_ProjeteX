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

public class CriarResposta implements Command{

	@Override
	public void executar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String pMensagem = request.getParameter("resposta");
		
		Resposta resposta = new Resposta();
		resposta.setResposta(pMensagem);
		
		MensagemService rs = new MensagemService();
		
		RequestDispatcher view = null;
		HttpSession session = request.getSession();
		
		//cria a resposta
		rs.criarResposta(resposta);
		ArrayList<Resposta> lista_resposta = new ArrayList<Resposta>();
		lista_resposta.add(resposta);
		session.setAttribute("lista_resposta", lista_resposta);
		view = request.getRequestDispatcher("tela-chat-bot.html");
		
		//verifica a resposta pra pergunta do usuario
		Pergunta pergunta = new Pergunta();
		String resultado = rs.verificarResposta(resposta);
		pergunta.setPergunta(resultado);
		
		//adiciona a resposta do sistema (pergunta) na session
		ArrayList<Pergunta> lista_pergunta = new ArrayList<Pergunta>();
		lista_pergunta.add(pergunta);
		session.setAttribute("lista_pergunta", lista_pergunta);
		view.forward(request, response);
		
	}

}
