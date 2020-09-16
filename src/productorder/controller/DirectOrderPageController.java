package productorder.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;

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
 * Servlet implementation class DirectOrderPageController
 */
@WebServlet("/DirectOrderPageController")
public class DirectOrderPageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DirectOrderPageController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text'html; charset=utf-8");
		response.setCharacterEncoding("UTF-8");
		
		
		Service service = new ServiceImpl();
		product.service.Service service_prod = new product.service.ServiceImpl();
		member.service.Service member_service = new member.service.ServiceImpl();
		HttpSession session = request.getSession(false);
		String m_id = (String) session.getAttribute("id");
		MemberVO member = member_service.getMember(m_id);
		
        
        ArrayList<ProductOrderVO> list = new ArrayList<ProductOrderVO>();
		
        String [] selection = request.getParameterValues("productNum");
        String orderName = "주문번호 : ";
        int order_totalQuantity = 0;
		int order_totalPrice = 0;
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		String size = request.getParameter("size");
		
		System.out.println(quantity + size);
		
		for (String sel:selection) {
			int o_num = Integer.parseInt(sel);
			System.out.println("전달받은 num : " + o_num);
			orderName += "," + sel;
			ProductOrderVO po = new ProductOrderVO();
			ProductVO p = service_prod.getProduct(o_num);
			
			
			System.out.println(po.toString());
			System.out.println(p.toString());
			
			
			po.setNum(service.makeProductOrderNum());
			po.setP_num(o_num);
			po.setO_quantity(quantity);
			po.setTotal_price(p.getPrice()*quantity);
			po.setM_id(m_id);
			
			po.setO_state(2);	// o_state 값: 0 == 장바구니, 1 == 결제완료, 2 == 구매하기취소
			po.setD_state(0);	// d_state 값: 0 == 배송 전, 1 == 배송 완료
			po.setP_size(size);
			po.setProd_name(p.getName());
			po.setProd_img(p.getImg());
			po.setR_state(0);	// r_state 값: 0 == 리뷰작성 전, 1 == 리뷰 작성 완료
			
			System.out.println(po.toString());

			
			order_totalPrice += po.getTotal_price();
			order_totalQuantity += po.getO_quantity();
			System.out.println("order_totalQuantity : " + order_totalQuantity);
			System.out.println("order_totalPrice : " + order_totalPrice);
			
			service.add(po);
			
			list.add(po);
		}
		
		
		
		
		
		
		
		request.setAttribute("orderName", orderName);
		request.setAttribute("list", list);
		request.setAttribute("order_totalPrice", order_totalPrice);
		request.setAttribute("order_totalQuantity", order_totalQuantity);
		request.setAttribute("member", member);
		
		
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
