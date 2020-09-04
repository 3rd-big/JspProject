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
		
		HttpSession session = request.getSession(false);
        String id = (String) session.getAttribute("id");
		
        int productNum = Integer.parseInt(request.getParameter("productNum"));
		String size = request.getParameter("size");
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		
		Service service = new ServiceImpl();
		
		product.service.Service service_prod = new product.service.ServiceImpl();
		member.service.Service member_service = new member.service.ServiceImpl();
		
		ProductOrderVO po = new ProductOrderVO();
		
		ProductVO p = service_prod.getProduct(productNum);
		MemberVO member = member_service.getMember(id);
		
		po.setNum(service.makeProductOrderNum());
		po.setP_num(productNum);
		po.setO_quantity(quantity);
		po.setTotal_price(p.getPrice()*quantity);
		po.setM_id(id);
		po.setO_state(1);	// o_state 값: 0 == 장바구니, 1 == 결제완료
		po.setD_state(0);	// d_state 값: 0 == 배송 전, 1 == 배송 완료
		po.setP_size(size);
		po.setProd_name(p.getName());
		po.setProd_img(p.getImg());
		po.setR_state(0);	// r_state 값: 0 == 리뷰작성 전, 1 == 리뷰 작성 완료
        System.out.println(po.toString());
        System.out.println(member.toString());
        int save_point = (int) (po.getTotal_price()*0.05); // 총 결제 금액의 예상 적립 포인트
        
        request.setAttribute("productInfo", po);
        request.setAttribute("member", member);
		request.setAttribute("preSave_point", save_point );
        System.out.println("DirectOrderPageController 도착");
		
		
		
		
		RequestDispatcher rd = request.getRequestDispatcher("/views/member/directOrderPage.jsp");
		if ( rd!=null) {
			rd.forward(request, response);
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
