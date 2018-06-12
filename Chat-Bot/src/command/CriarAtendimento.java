package command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Atendimento;
import service.MensagemService;

public class CriarAtendimento implements Command{

	@Override
	public void executar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int pTent = Integer.parseInt(request.getParameter("tentativa"));
		//pega se ele foi mandado para o atendimento humano
		String pEncaminhado = request.getParameter("encaminhado");
		String pInteracao = request.getParameter("interacao");
		
		Atendimento atd = new Atendimento();
		atd.setEncaminhado(pEncaminhado);
		atd.setTentativas(pTent);
		atd.setInteracao(pInteracao);
		
		//salva o atendimento no banco
		MensagemService ms = new MensagemService();
		ms.criarAtendimento(atd);
		
		
	}
	
}
