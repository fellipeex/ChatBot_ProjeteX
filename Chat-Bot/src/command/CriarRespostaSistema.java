package command;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Pergunta;
import service.MensagemService;

public class CriarRespostaSistema implements Command {

	@Override
	public void executar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String pPalavraChave = request.getParameter("palChave");
		String pPerguntaSist = request.getParameter("pergunta");
		
		Pergunta pergunta = new Pergunta();
		pergunta.setPalavraChave(pPalavraChave);
		pergunta.setPergunta(pPerguntaSist);
		
		MensagemService ms = new MensagemService();
					
		//insere a pergunta no banco
		ms.criarPergunta(pergunta);
		
		RequestDispatcher view = null;
		view = request.getRequestDispatcher("CriarRespostaSuccess.jsp");
			
		
		
	}

}
