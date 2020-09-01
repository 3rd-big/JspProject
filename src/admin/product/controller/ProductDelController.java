package admin.product.controller;

import java.io.File;
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

@WebServlet("/ProductDelController")
public class ProductDelController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ProductDelController() {

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text'html; charset=utf-8");
		response.setCharacterEncoding("UTF-8");
		
		int num = Integer.parseInt(request.getParameter("num"));
		
		Service service = new ServiceImpl();
		ProductVO p = service.getProduct(num);
		ArrayList<ProductImageVO> detailImgs = service.getDetailImgAll(num);

		String uploadPath = "C:\\JSPClass\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\webapps\\upload_img\\";
		
		// 톰캣 폴더의 대표이미지 삭제
		String[] imgPath = p.getImg().split("/");
		String fname = imgPath[imgPath.length - 1];
		File f = new File(uploadPath + fname);
		f.delete();
		
		// 톰캣 폴더의 상세이미지 삭제
		for (ProductImageVO detailImg : detailImgs) {
			imgPath = detailImg.getImg().split("/");
			fname = imgPath[imgPath.length - 1];
			f = new File(uploadPath + fname);
			f.delete();
		}
		
		// DB 데이터 삭제
		service.delProduct(num);

		response.sendRedirect("ProductAllListController");
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
