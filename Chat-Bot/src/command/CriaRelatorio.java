package command;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import model.Atendimento;
import service.MensagemService;

public class CriaRelatorio implements Command {

	@Override
	public void executar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			
		String pPeri = request.getParameter("peri");
		
		MensagemService ms = new MensagemService();
		
		ArrayList<Atendimento> lista_relatorio = ms.criarRelatorio(pPeri);
		
		String listaAtdJson = new Gson().toJson(lista_relatorio);
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		response.getWriter().write(listaAtdJson);
		
	}

}
