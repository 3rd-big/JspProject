package product.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ProductImageVO;
import model.ProductVO;
import product.service.Service;
import product.service.ServiceImpl;

/**
 * Servlet implementation class DetailImageController
 */
@WebServlet("/DetailImageController")
public class DetailImageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DetailImageController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		response.setCharacterEncoding("UTF-8");
		
		Service service = new ServiceImpl();
		product.service.Service pImg_service = new product.service.ServiceImpl();
		ArrayList<ProductVO> pImgs = service.getProductAll();

		//request.setAttribute(arg0, arg1);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
