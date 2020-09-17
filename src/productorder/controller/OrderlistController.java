//package productorder.controller;
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
//import model.ProductVO;
//import productorder.service.Service;
//import productorder.service.ServiceImpl;
//
//
///**
// * Servlet implementation class OrderlistController
// */
//@WebServlet("/OrderlistController")
//public class OrderlistController extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//       
//    /**
//     * @see HttpServlet#HttpServlet()
//     */
//    public OrderlistController() {
//        super();
//        // TODO Auto-generated constructor stub
//    }
//
//	/**
//	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
//	 */
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		Service service = new ServiceImpl();
//		product.service.Service service_prod = new product.service.ServiceImpl();
//		
//		int o_state = Integer.parseInt(request.getParameter("o_state"));
//		HttpSession session = request.getSession(false);
//		String m_id = (String)session.getAttribute("id");
//		ArrayList<ProductOrderVO> list = service.orderList(m_id, o_state);
//		
//
//		for(ProductOrderVO o:list) {
//			ProductVO p = service_prod.getProduct(o.getP_num());
//			
//			System.out.println("p_num은"+o.getP_num());
//			System.out.println("r_state는"+o.getR_state());
//			o.setProd_name(p.getName());
//			o.setProd_img(p.getImg());
//		}
//		String path=null;
//		if(o_state==1) {
//			path="/views/mypage/orderlist.jsp";
//		}else if(o_state==0){
//			path="/views/mypage/myCart.jsp";
//		}
//		request.setAttribute("list", list);
//		request.setAttribute("o_state", o_state);
//		
//		RequestDispatcher rd = request.getRequestDispatcher(path);
//		rd.forward(request, response);
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
