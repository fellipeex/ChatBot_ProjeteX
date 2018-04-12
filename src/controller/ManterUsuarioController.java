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
 * Servlet implementation class ManterUsuarioController
 */
@WebServlet("/ManterUsuario.do")
public class ManterUsuarioController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public ManterUsuarioController() {
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
		String pPnome = request.getParameter("Pnome");
		String pUnome =  request.getParameter("Unome");
		String pEmail =  request.getParameter("email");
		String pSenha =  request.getParameter("senha");
		String pNome = pPnome + pUnome;
		
		//instanciar o javabean
		Usuario user = new Usuario();
		user.setNome(pNome);
		user.setEmail(pEmail);
		user.setSenha(pSenha);
		
		//instanciar a service
		UsuarioService us = new UsuarioService();
		us.criar(user);
		user = us.carregar(user.getId());
		
		//enviar para o jsp
		request.setAttribute("usuario",user);
		
		RequestDispatcher view = 
		request.getRequestDispatcher("tela-chat-bot.html");
		view.forward(request,response);
		
		
	}

}
