package command;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Usuario;
import service.UsuarioService;

public class CriarUsuario implements Command{

	@Override
	public void executar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String pPnome = request.getParameter("Pnome");
		String pUnome = request.getParameter("Unome");
		String pEmail =  request.getParameter("email");
		String pSenha =  request.getParameter("senha");
		String Pnome  = pPnome + pUnome;
	
		//instanciar o javabean
		Usuario user = new Usuario();
		user.setNome(Pnome);
		user.setEmail(pEmail);
		user.setSenha(pSenha);
		
		//instanciar a service
		UsuarioService us = new UsuarioService();
		us.criar(user);
		
		//enviar para o jsp
		request.setAttribute("usuario",user);
		RequestDispatcher view = 
		request.getRequestDispatcher("tela-chat-bot.jsp");
		view.forward(request,response);
	}

}
