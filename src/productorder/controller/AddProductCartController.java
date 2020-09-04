package productorder.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.apache.catalina.ant.SessionsTask;

import model.ProductOrderVO;
import model.ProductVO;
import productorder.service.Service;
import productorder.service.ServiceImpl;

@WebServlet("/AddProductCartController")
public class AddProductCartController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AddProductCartController() {

    }

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
		ProductOrderVO po = new ProductOrderVO();
		
		ProductVO p = service_prod.getProduct(productNum);
		
		
		po.setNum(service.makeProductOrderNum());
		po.setP_num(productNum);
		po.setO_quantity(quantity);
		po.setTotal_price(p.getPrice()*quantity);
		po.setM_id(id);
		po.setO_state(0);	// o_state 값: 0 == 장바구니, 1 == 결제완료
		po.setD_state(0);	// d_state 값: 0 == 배송 전, 1 == 배송 완료
		po.setP_size(size);
		po.setProd_name(p.getName());
		po.setProd_img(p.getImg());
		po.setR_state(0);	// r_state 값: 0 == 리뷰작성 전, 1 == 리뷰 작성 완료
        System.out.println(po.toString());
        service.add(po);
        
        String path = "/views/member/directOrderPage.jsp";
        
        response.sendRedirect(path);


	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
