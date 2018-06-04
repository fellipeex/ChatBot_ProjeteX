package command;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

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

		// verifica a resposta para pergunta do usuario
		Resposta resposta = new Resposta();
		ArrayList<Resposta> resultado_respostas = rs.verificarResposta(pergunta);
		session.setAttribute("lista_respostas_validas", resultado_respostas);
			
		// coloca as perguntas que estao na session em um array
		@SuppressWarnings("unchecked")
		
		ArrayList<Resposta> lista_resposta = (ArrayList<Resposta>) session.getAttribute("lista_resposta");
		
		
		if (lista_resposta != null) {
			lista_resposta.add(0, resultado_respostas.get(0));
		} else {
			lista_resposta = new ArrayList<Resposta>();
			resposta = resultado_respostas.get(0);
			lista_resposta.add(0, resposta);
		}

		// adiciona a resposta do sistema na session
		session.setAttribute("lista_resposta", lista_resposta);
		
		
		String listaRespostaJson = new Gson().toJson(lista_resposta);
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		response.getWriter().write(listaRespostaJson);	
	}

}
