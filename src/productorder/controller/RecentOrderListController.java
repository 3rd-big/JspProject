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
 * Servlet implementation class RecentOrderListController
 */
@WebServlet("/RecentOrderListController")
public class RecentOrderListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RecentOrderListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Service service = new ServiceImpl();
		product.service.Service service_prod = new product.service.ServiceImpl();
		

		HttpSession session = request.getSession(false);
		String m_id = (String)session.getAttribute("id");
		ArrayList<ProductOrderVO> recentlist = service.getRecentOrderList(m_id);
		

		for(ProductOrderVO o:recentlist) {
			ProductVO p = service_prod.getProduct(o.getP_num());

			o.setProd_name(p.getName());
			o.setProd_img(p.getImg());
		}

		request.setAttribute("list", recentlist);

		RequestDispatcher rd = request.getRequestDispatcher("/views/mypage/recentOrderlist.jsp");
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
