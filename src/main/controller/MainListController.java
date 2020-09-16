package main.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.NoticeVO;
import model.ProductVO;
import product.service.Service;
import product.service.ServiceImpl;

@WebServlet("/MainListController")
public class MainListController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public MainListController() {

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		
		Service service = new ServiceImpl(); 
		ArrayList<ProductVO> bestProducts = service.getBestProducts(4);
		ArrayList<ProductVO> newProducts = service.getNewProducts(3); //선정 수정 4->3
		
		request.setAttribute("bestProducts", bestProducts);
		request.setAttribute("newProducts", newProducts);
		
		
//		notice.service.Service notice_service = new notice.service.ServiceImpl();
//		ArrayList<NoticeVO> notices = notice_service.getNoticeAll();
//		request.setAttribute("notices", notices);
		

		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/main/main2.jsp");
		dispatcher.forward(request, response);
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
