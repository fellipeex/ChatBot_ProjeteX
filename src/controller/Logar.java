package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Usuario;
import service.UsuarioService;

/**
 * Servlet implementation class Logar
 */
@WebServlet("/Logar.do")
public class Logar extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Logar() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pEmail = request.getParameter("email");
		String pSenha = request.getParameter("senha");
		
		//instanciar o javabean
		Usuario user = new Usuario();
		user.setEmail(pEmail);
		user.setSenha(pSenha);
		
		//instancia a service
		UsuarioService us = new UsuarioService();
		
		
		if(us.autenticar(user)) {
			request.getRequestDispatcher("tela-chat-bot.html");
		}else {
			request.getRequestDispatcher("erro.html");
		}
		
		
		
		
	}

}
