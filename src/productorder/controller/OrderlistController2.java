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

import model.ProductOrderVO;
import model.ProductVO;
import productorder.service.Service;
import productorder.service.ServiceImpl;

/**
 * Servlet implementation class OrderlistController2
 */
@WebServlet("/OrderlistController2")
public class OrderlistController2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderlistController2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Service service = new ServiceImpl();
		product.service.Service service_prod = new product.service.ServiceImpl();
		
		
		int code_num = Integer.parseInt(request.getParameter("code_num"));
		HttpSession session = request.getSession(false);
		String m_id = (String)session.getAttribute("id");
		ArrayList<ProductOrderVO> list = service.orderListByCNum(m_id, code_num);
		

		for(ProductOrderVO o:list) {
			ProductVO p = service_prod.getProduct(o.getP_num());
			
			System.out.println("p_num은"+o.getP_num());
			System.out.println("r_state는"+o.getR_state());
			o.setProd_name(p.getName());
			o.setProd_img(p.getImg());
		}
		String path=null;
		
		request.setAttribute("list", list);
		request.setAttribute("code_num", code_num);
		
		RequestDispatcher rd = request.getRequestDispatcher("/views/mypage/orderlist.jsp");
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
