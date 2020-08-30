package product.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ProductImageVO;
import product.service.Service;
import product.service.ServiceImpl;

@WebServlet("/DetailImgListController")
public class DetailImgListController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public DetailImgListController() {

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text'html; charset=utf-8");
		response.setCharacterEncoding("UTF-8");
		
		Service service = new ServiceImpl();
		
		int p_num = Integer.parseInt(request.getParameter("p_num"));
		
		ArrayList<ProductImageVO> imgs = service.getDetailImgAll(p_num);
		
		request.setAttribute("imgs", imgs);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/json/detailImgList_JSON.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
