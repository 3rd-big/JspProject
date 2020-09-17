//package review.controller;
//
//import java.io.IOException;
//import java.util.ArrayList;
//
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//
//import model.ProductOrderVO;
//import model.ReviewVO;
//import review.service.Service;
//import review.service.ServiceImpl;
//
//
//
///**
// * Servlet implementation class AddReviewFormController
// */
//@WebServlet("/AddReviewFormController")
//public class AddReviewFormController extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//       
//    /**
//     * @see HttpServlet#HttpServlet()
//     */
//    public AddReviewFormController() {
//        super();
//        // TODO Auto-generated constructor stub
//    }
//
//	/**
//	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
//	 */
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		request.setCharacterEncoding("UTF-8");
//		response.setContentType("text/html; charset=UTF-8");
//		response.setCharacterEncoding("UTF-8");
//		
//		Service service = new ServiceImpl();
//		
//		HttpSession session = request.getSession(false);
//	    String m_id = (String) session.getAttribute("id");
//	    ReviewVO review = new ReviewVO();
//	    ProductOrderVO o = new ProductOrderVO();
//	    productorder.service.Service service_order = new productorder.service.ServiceImpl();
//	    int o_state = 0;
//	    ArrayList<ProductOrderVO> orderlist = service_order.orderList(m_id, o_state);
//	    
//	    int p_num = Integer.parseInt(request.getParameter("p_num"));
//        
//	    request.setAttribute("o", o);
//	    request.setAttribute("review", review);
//	    
//
//	   
//		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/review/addForm.jsp");
//		dispatcher.forward(request, response);
//		
//	}
//
//	/**
//	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
//	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
//	}
//
//}
