package review.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AddReviewPopupController")
public class AddReviewPopupController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AddReviewPopupController() {

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text'html; charset=utf-8");
		response.setCharacterEncoding("UTF-8");
		
		int p_num = Integer.parseInt(request.getParameter("p_num"));
		int num = Integer.parseInt(request.getParameter("num"));
		
		request.setAttribute("p_num", p_num);
		request.setAttribute("num", num);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/review/addForm.jsp");
		dispatcher.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
