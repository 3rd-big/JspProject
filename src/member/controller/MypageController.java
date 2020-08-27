package member.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.service.Service;
import member.service.ServiceImpl;
import model.MemberVO;
import model.ProductOrderVO;
import model.ProductVO;



/**
 * Servlet implementation class MypageController
 */
@WebServlet("/MypageController")
public class MypageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MypageController() {
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

        Service service = new ServiceImpl();
        HttpSession session = request.getSession(false);
        String id = (String) session.getAttribute("id");
        MemberVO m = service.getMember(id);
        request.setAttribute("m", m);


        productorder.service.Service service_prod_order = new productorder.service.ServiceImpl();
		product.service.Service service_prod = new product.service.ServiceImpl();
		
		int o_state = Integer.parseInt(request.getParameter("o_state"));
		String m_id = (String)session.getAttribute("id");
		ArrayList<ProductOrderVO> list = service_prod_order.orderList(m_id, o_state);

		for(ProductOrderVO o:list) {
			ProductVO p = service_prod.getProduct(o.getP_num());
			o.setProd_name(p.getName());
			o.setProd_img(p.getImg());
		}
		
		request.setAttribute("list", list);
		request.setAttribute("o_state", o_state);


        RequestDispatcher dispatcher = request.getRequestDispatcher("/views/mypage/myInfo.jsp");
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