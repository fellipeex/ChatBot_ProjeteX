package command;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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

		if (lista_resp_val != null) {
			for (int i = 0; i < lista_resp_val.size(); i++) {
				Resposta resposta_usuario = lista_respostas.get(i);

				if (lista_respostas != null) {
					Resposta resposta_resultado = lista_resp_val.get(0);
					if (resposta_usuario.getPalavraChave() == resposta_resultado.getPalavraChave()) {
						lista_respostas.remove(0);
						lista_respostas.add(0, lista_resp_val.get(0));

					}
				}

			}
		}

	}

}
