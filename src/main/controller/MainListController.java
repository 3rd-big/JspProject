package main.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ProductVO;
import product.service.Service;
import product.service.ServiceImpl;

public class MainListController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public MainListController() {

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		
		Service service = new ServiceImpl(); 
		ArrayList<ProductVO> data = service.getProductAll();
		
		request.setAttribute("data", data);

		RequestDispatcher dispatcher = request.getRequestDispatcher("/startbootstrap-shop-homepage-gh-pages/main.jsp");
		dispatcher.forward(request, response);
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
