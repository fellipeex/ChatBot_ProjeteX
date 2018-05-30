package command;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import model.Resposta;

public class ValidarResposta implements Command {

	@Override
	public void executar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();

		@SuppressWarnings("unchecked")
		ArrayList<Resposta> lista_resp_val = (ArrayList<Resposta>) session.getAttribute("lista_respostas_validas");

		@SuppressWarnings("unchecked")
		ArrayList<Resposta> lista_respostas = (ArrayList<Resposta>) session.getAttribute("lista_respostas_");
		//verifica se a lista nao veio nula
		if (lista_resp_val != null) {
			//percorre o array de respostas validas
			for (int i = 0; i < lista_resp_val.size(); i++) {
				//pega uma resposta das validas
				Resposta resposta_resultado = lista_resp_val.get(i);

				if (lista_respostas != null) {
					//comprara se uma valida é igual a que esta na session
					Resposta resposta_usuario = lista_respostas.get(0);
	
					if (resposta_usuario.getPalavraChave() == resposta_resultado.getPalavraChave()) {
						lista_respostas.remove(0);
						lista_respostas.add(0, lista_resp_val.get(0));

					}
				}
			}
		}
		
		response.sendRedirect(null);
		
		String listaRespostaJson = new Gson().toJson(lista_respostas);
		
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		response.getWriter().write(listaRespostaJson);

	}

}
