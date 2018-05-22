package command;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Resposta;
import model.Usuario;
import service.MensagemService;

public class CriarRespostaSistema implements Command {

	@Override
	public void executar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String pPalavraChave = request.getParameter("palChave");
		String pPerguntaSist = request.getParameter("resposta");

		RequestDispatcher view = null;
		HttpSession session = request.getSession();

		Resposta resposta = new Resposta();
		resposta.setPalavraChave(pPalavraChave);
		resposta.setResposta(pPerguntaSist);

		MensagemService ms = new MensagemService();

		Usuario usuario = (Usuario) session.getAttribute("usuario");

		if (usuario != null) {
			ms.criarResposta(resposta, usuario);
		} else {
			usuario = new Usuario();
			ms.criarResposta(resposta, usuario);
		}

		view = request.getRequestDispatcher("CriarRespostaSuccess.jsp");
		view.forward(request, response);
	}

}
