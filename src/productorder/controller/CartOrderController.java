package productorder.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberVO;
import model.ProductOrderVO;
import model.ProductVO;
import productorder.service.Service;
import productorder.service.ServiceImpl;

/**
 * Servlet implementation class CartOrderController
 */
@WebServlet("/CartOrderController")
public class CartOrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartOrderController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		response.setCharacterEncoding("UTF-8");
		
		
		Service service = new ServiceImpl();
		product.service.Service service_prod = new product.service.ServiceImpl();
		member.service.Service member_service = new member.service.ServiceImpl();
		HttpSession session = request.getSession(false);
		
		
		String m_id = (String)session.getAttribute("id");
		ArrayList<ProductOrderVO> list = new ArrayList<ProductOrderVO>();
		MemberVO member = member_service.getMember(m_id);
		
		String [] selection = request.getParameterValues("sel");
		String orderName = "주문번호 : ";
		int order_totalQuantity = 0;
		int order_totalPrice = 0;
		for (String sel:selection) {
			int o_num = Integer.parseInt(sel);
			System.out.println("전달받은 num : " + o_num);
			orderName += "," + sel;
			ProductOrderVO po = service.getOrder(o_num);
			ProductVO p = service_prod.getProduct(po.getP_num());
			
			System.out.println(po.toString());
			po.setProd_name(p.getName());
			po.setProd_img(p.getImg());
			
			
			
			order_totalPrice += po.getTotal_price();
			order_totalQuantity += po.getO_quantity();
			System.out.println("order_totalQuantity : " + order_totalQuantity);
			System.out.println("order_totalPrice : " + order_totalPrice);
			
			list.add(po);
			
		}
		
		int preSave_point = (int) (order_totalPrice * 0.05);
				
		session.setAttribute("id", m_id);
		request.setAttribute("orderName", orderName);
		request.setAttribute("list", list);
		request.setAttribute("order_totalPrice", order_totalPrice);
		request.setAttribute("order_totalQuantity", order_totalQuantity);
		request.setAttribute("member", member);
		request.setAttribute("preSave_point", preSave_point);
		
		String path = "/views/mypage/cartOrderPage.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(path);
		rd.forward(request, response);
		
		
		
		
	}
		

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
