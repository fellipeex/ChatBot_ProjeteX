package command;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ActionServlet
 */

public class ActionServlet extends HttpServlet implements Command{
	private static final long serialVersionUID = 1L;

	public ActionServlet() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public void executar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String name = null;
		name = "Hello " + request.getParameter("user");
		if (request.getParameter("user").toString().equals("")) {
			name = "Hello User";
		}
		List<String> list = new ArrayList<>();
		list.add(name);
		String json = new Gson().toJson(list);
		
		
		response.setContentType("application/Json");
		response.setCharacterEncoding("UTF-8");
		response.getWriter().write(json);
	

	}
	
	
}