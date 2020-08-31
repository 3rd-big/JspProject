package admin.product.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import product.service.Service;
import product.service.ServiceImpl;

@WebServlet("/ProductDelController")
public class ProductDelController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ProductDelController() {

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text'html; charset=utf-8");
		response.setCharacterEncoding("UTF-8");
		
//		int num = Integer.parseInt(request.getParameter("num"));
//		
//		Service service = new ServiceImpl();
//		service.delProduct(num);
//		
//		String uploadPath = "C:\\JSPClass\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\webapps\\upload_img";
		
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
