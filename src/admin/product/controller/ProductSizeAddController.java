package admin.product.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ProductSizeVO;
import product.service.Service;
import product.service.ServiceImpl;

@WebServlet("/ProductSizeAddController")
public class ProductSizeAddController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ProductSizeAddController() {

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		int productNum = Integer.parseInt(request.getParameter("productNum"));
		String size = request.getParameter("size");
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		
		Service service = new ServiceImpl();
		ProductSizeVO ps = new ProductSizeVO();
		
		// 남은 재고의 수량
		int remainingQuantity = service.checkQuantity(productNum, size);
		
		if(-1 == remainingQuantity) {	// 입고된 기록이 없음, insert
			ps.setNum(service.makeProductSizeNum());
			ps.setP_num(productNum);
			ps.setPsize(size);
			ps.setQuantity(quantity);
			service.add(ps);
		}else {							// 재고가 남아있음, update
			ps.setP_num(productNum);
			ps.setPsize(size);
			ps.setQuantity(remainingQuantity + quantity);
			service.addQuantity(ps);
		}

		response.sendRedirect(request.getContextPath()+"/ProductAllListController?page=1"); 
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
