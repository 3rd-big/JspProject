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
		response.setContentType("text/html; charset=utf-8");
		response.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession(false);
        String id = (String) session.getAttribute("id");
		
		int p_num = Integer.parseInt(request.getParameter("productNum"));
		String size = request.getParameter("size");
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		
		Service service = new ServiceImpl();
		product.service.Service service_prod = new product.service.ServiceImpl();
		ProductOrderVO po = new ProductOrderVO();
		
		ProductVO p = service_prod.getProduct(p_num);

        // product_size 테이블의 재고 확인 ( return 값이 -1 이면 아직 입고하지 않은 상태 )
		int findProductQuantity = service.findProductQuantity(p_num, size) ;

        int findCartNum = service.findProductInCartNum(id, p_num, size);
        
        if(findProductQuantity >= quantity) {	// 재고 >= 주문수량 :: 주문 가능
        	
        	if(-1 == findCartNum) {		// 장바구니에 해당삼품이 존재하지 않음 :: 장바구니 추가
        		
            	po.setNum(service.makeProductOrderNum());
        		po.setP_num(p_num);
        		po.setO_quantity(quantity);
        		po.setTotal_price(p.getPrice()*quantity);
        		po.setM_id(id);
        		po.setO_state(0);	// o_state 값: 0 == 장바구니, 1 == 결제완료
        		po.setD_state(0);	// d_state 값: 0 == 배송 전, 1 == 배송 완료
        		po.setP_size(size);
        		po.setProd_name(p.getName());
        		po.setProd_img(p.getImg());
        		po.setR_state(0);	// r_state 값: 0 == 리뷰작성 전, 1 == 리뷰 작성 완료
//        		po.setCode_num(service.makeProductOrderCodeNum());	// TODO CodeNum 정확한 용도 확인 후 수정
        		
            	service.add(po);
            	
            	
        		response.getWriter().print("AddCart Success");
         	
            }else {						// 장바구니에 해당상품 존재
            	
            	response.getWriter().print("Already Existed");
           	
            }
        	
        }else {									// 재고 < 주문수량 :: 주문 불가
        	response.getWriter().print("Sold Out");    	
        }
	}
	


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
