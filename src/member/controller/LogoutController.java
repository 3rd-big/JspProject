package member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LogoutController")
public class LogoutController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public LogoutController() {

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		response.setCharacterEncoding("UTF-8");
		
<<<<<<< HEAD

		HttpSession session = request.getSession(false);
	
		session.invalidate();
		

		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/main/main.jsp");
=======
		HttpSession session = request.getSession(false);
		
		session.invalidate();
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/MainListController");
>>>>>>> 3d3a7c494ebf688f3df9ade1ba41bdd7e8ea8bd1
		if(dispatcher != null) {
			dispatcher.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
