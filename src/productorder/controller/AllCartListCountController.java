package productorder.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import productorder.service.Service;
import productorder.service.ServiceImpl;

@WebServlet("/AllCartListCountController")
public class AllCartListCountController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AllCartListCountController() {

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text'html; charset=utf-8");
		response.setCharacterEncoding("UTF-8");

		String m_id = request.getParameter("m_id");
		
		Service service = new ServiceImpl();
		int numProdInTheCart = service.getCartListCountById(m_id);

		request.setAttribute("numProdInTheCart", numProdInTheCart);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/json/CartListCountResult_JSON.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
