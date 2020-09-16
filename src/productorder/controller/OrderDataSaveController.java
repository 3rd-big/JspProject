package productorder.controller;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.OrderInfoVO;
import model.ProductOrderVO;
import model.ProductSizeVO;
import model.ProductVO;
import productorder.service.Service;
import productorder.service.ServiceImpl;

/**
 * Servlet implementation class OrderDataSaveController
 */
@WebServlet("/OrderDataSaveController")
public class OrderDataSaveController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public OrderDataSaveController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text'html; charset=utf-8");
		response.setCharacterEncoding("UTF-8");
		
		Service service = new ServiceImpl();

		HttpSession session = request.getSession(false);
		String id = (String) session.getAttribute("id");
		
		
		String oi_name = request.getParameter("oi_name");
		String oi_phone = request.getParameter("oi_phone");

		String code_num = request.getParameter("code_num");
		
		String oi_howPay = request.getParameter("oi_howPay");
		int oi_totalPrice = Integer.parseInt(request.getParameter("oi_totalPrice"));
		String oi_status = request.getParameter("oi_status");
		String order_name = request.getParameter("order_name");
		String oi_email = request.getParameter("oi_email");
		String oi_addr_full = request.getParameter("oi_addr_full");
		String oi_addr_zipNo = request.getParameter("oi_addr_zipNo");
		String oi_addr_roadAddrPart1 = request.getParameter("oi_addr_roadAddrPart1");
		String oi_addr_roadAddrPart2 = request.getParameter("oi_addr_roadAddrPart2");
		String oi_addr_addrDetail = request.getParameter("oi_addr_addrDetail");
		String oi_deliMessage = request.getParameter("oi_deliMessage");
		int oi_originTotalPrice = Integer.parseInt(request.getParameter("oi_originTotalPrice"));
		int oi_usePoint = Integer.parseInt(request.getParameter("oi_usePoint"));
		String add_name = request.getParameter("add_name");
		String add_phone1 = request.getParameter("add_phone1");
		String add_phone2 = request.getParameter("add_phone2");
		String add_email = request.getParameter("add_email");
		String add_addr_full = request.getParameter("add_addr_full");
		String add_addr_zipNo = request.getParameter("add_addr_zipNo");
		String add_addr_roadAddrPart1 = request.getParameter("add_addr_roadAddrPart1");
		String add_addr_roadAddrPart2 = request.getParameter("add_addr_roadAddrPart2");
		String add_addr_addrDetail = request.getParameter("add_addr_addrDetail");
		
		
		product.service.Service product_service = new product.service.ServiceImpl();
		
		// ProductOrder테이블의 code_num 변경
		String [] selection = request.getParameterValues("oi_productOrderNum[]");
		
		for (String sel:selection) {
			int num = Integer.parseInt(sel);
			System.out.println("전달받은 num : " + num);
			ProductOrderVO po = service.getOrder(num);
			
			//System.out.println(po.toString());
			po.setCode_num(code_num);
			po.setO_state(1);
			service.updateCode_num(po);
			
			//재고변경
			ProductSizeVO ps = new ProductSizeVO();
			int remainingQuantity = product_service.checkQuantity(po.getP_num(), po.getP_size());
			ps.setP_num(po.getP_num());
			ps.setPsize(po.getP_size());
			ps.setQuantity(remainingQuantity - po.getO_quantity());
			product_service.addQuantity(ps);
			
			//Record 카운트 up
			ProductVO productvo = product_service.getProduct(po.getP_num());
			int currentRecord = productvo.getRecord();
			productvo.setRecord(currentRecord + po.getO_quantity());
			product_service.recordup(productvo);
		}
		
		
		//OrderInfo 테이블에 데이터 추가
		OrderInfoVO oivo = new OrderInfoVO();
		
		oivo.setNum(service.makeOrderInfoNum());
		oivo.setOi_id(id);
		oivo.setOi_name(oi_name);
		oivo.setOi_phone(oi_phone);
		oivo.setOi_email(oi_email);
		oivo.setOi_addr_full(oi_addr_full);
		oivo.setOi_addr_zipno(oi_addr_zipNo);
		oivo.setOi_addr_roadAddrPart1(oi_addr_roadAddrPart1);
		oivo.setOi_addr_roadAddrPart2(oi_addr_roadAddrPart2);
		oivo.setOi_addr_addrDetail(oi_addr_addrDetail);
		oivo.setDeliMessage(oi_deliMessage);
		oivo.setHowPay(oi_howPay);
		oivo.setOi_userPoint(oi_usePoint);
		oivo.setOi_originTotalPrice(oi_originTotalPrice);
		oivo.setOi_totalPrice(oi_totalPrice);
		oivo.setOi_code_num(code_num);
		oivo.setAdd_name(add_name);
		oivo.setAdd_phone1(add_phone1);
		oivo.setAdd_phone2(add_phone2);
		oivo.setAdd_email(add_email);
		oivo.setAdd_addr_full(add_addr_full);
		oivo.setAdd_addr_zipNo(add_addr_zipNo);
		oivo.setAdd_addr_roadAddrPart1(add_addr_roadAddrPart1);
		oivo.setAdd_addr_roadAddrPart2(add_addr_roadAddrPart2);
		oivo.setAdd_addr_addrDetail(add_addr_addrDetail);
		System.out.println(oivo.toString());
		
		
		service.addOrderInfo(oivo);
		
		
		
		

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
