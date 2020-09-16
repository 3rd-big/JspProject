package productorder.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.OrderInfoVO;
import productorder.service.Service;
import productorder.service.ServiceImpl;

/**
 * Servlet implementation class PaymentInfoController
 */
@WebServlet("/PaymentInfoController")
public class PaymentInfoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PaymentInfoController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=utf-8");
        response.setCharacterEncoding("utf-8");
        
        HttpSession session = request.getSession(false);
        String m_id = (String)session.getAttribute("id");
        String code_num=request.getParameter("code_num");

        Service service = new ServiceImpl();
        OrderInfoVO orderinfo = service.getPaymentInfo(code_num);
        
        request.setAttribute("orderinfo", orderinfo);

        RequestDispatcher dispatcher = request.getRequestDispatcher("/views/mypage/paymentInfoForm.jsp");
        if(dispatcher!=null) {
           dispatcher.forward(request, response);
        }
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
