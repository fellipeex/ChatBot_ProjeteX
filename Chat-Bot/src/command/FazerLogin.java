package command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Usuario;
import service.UsuarioService;

public class FazerLogin implements Command {

	@Override
	public void executar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String pEmail = request.getParameter("email");
		String pSenha = request.getParameter("senha");

		Usuario usuario = new Usuario();
		usuario.setEmail(pEmail);
		usuario.setSenha(pSenha);
		UsuarioService service = new UsuarioService();
		
		if(service.validar(usuario)){
			HttpSession session = request.getSession();
			session.setAttribute("logado", usuario);
			System.out.println("Logou "+usuario);
			response.sendRedirect("tela-chat-bot.jsp");
		} else {
			response.sendRedirect("UsuarioInvalido.jsp");
		}
	}

}
