package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Cliente;
import service.ClienteService;

/**
 * Servlet implementation class ManterClienteController
 */
@WebServlet("/ManterCliente.do")
public class ManterClienteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pUNome = request.getParameter("Unome");
		String pPNome = request.getParameter("nome");
		String pEmail = request.getParameter("email");
		String pFone = request.getParameter("senha");
		String pNome = pUNome+pNome;
		
		//instanciar o javabean
		Cliente cliente = new Cliente();
		cliente.setNome(pNome);
		cliente.setFone(pFone);
		cliente.setEmail(pEmail);
		
		//instanciar o service
		ClienteService cs = new ClienteService();
		cs.criar(cliente);
		cliente = cs.carregar(cliente.getId());
		
		//enviar para o jsp
		request.setAttribute("cliente",cliente);
		
		RequestDispatcher view = 
				request.getRequestDispatcher("tela-chat-bot.jsp");
		view.forward(request,response);
		
	}

}
