package product.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.PaginationVO;
import model.ProductSizeVO;
import model.ProductVO;
import product.service.Service;
import product.service.ServiceImpl;

@WebServlet("/ProductAllListController")
public class ProductAllListController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ProductAllListController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		response.setCharacterEncoding("UTF-8");
		
		int page = Integer.parseInt(request.getParameter("page"));
		
		Service service = new ServiceImpl();
		ArrayList<ProductVO> allProducts = service.getProductAll();
		ArrayList<ProductVO> products = service.getProductManagementByPageNum(page);
		
		
		for (ProductVO product : products) {
			ArrayList<ProductSizeVO> productsSize = service.getProductsSizeAll(product.getNum());
			product.setSizes(productsSize);
		}
		
		request.setAttribute("products", products);		
		
		PaginationVO pn = new PaginationVO();
		
		// 페이징 처리
		pn.setPage(page);					// 현재 페이지
		pn.setCountList(8);					// 한 화면에 보여질 상품 수
		pn.setCountPage(3);					// 하단 보여질 페이지 수 ex) << < 1 2 3 > >>
		
		pn.setTotalCount(allProducts.size());	// 전체 상품 수 ex) 35개
		
		pn.setTotalPage(pn.getTotalCount() / pn.getCountList());
		if(pn.getTotalCount() % pn.getCountList() > 0) {	// ex) 총 상품 35개, 한 페이지에 8개 표시 :: 4개의 페이지(8개 상품) + 1페이지(3개 상품)
			pn.setTotalPage(pn.getTotalPage() + 1);
		}
		
		if(pn.getTotalPage() < pn.getPage()) {
			pn.setPage(pn.getTotalPage());
		}
		
		pn.setStartPage((pn.getPage() - 1) / pn.getCountPage() * pn.getCountPage() + 1);
		pn.setEndPage(pn.getStartPage() + pn.getCountPage() - 1);
		
		
		/*
		 *  아래 조건이 없으면 다음과 같은 대참사가 발생
		 *  현재 4페이지에 위치하면, startPage == 4, endPage == 5 로 나와야함. << < 4 5 > >>
		 *  아래 조건이 없을 경우, endPage = 4 + 3 - 1 >> endPage == 6..    :: << < 4 5 6 > >>  
		 *  6페이지를 누르면 아무런 값도 나오지 않음
		 *  아래 조건을 넣어야 if( 6 > 5 ) 조건을 만족하여 endPage는 5가 됨
		 */
		if(pn.getEndPage() > pn.getTotalPage()) {
			pn.setEndPage(pn.getTotalPage());
		}
		
		request.setAttribute("pn", pn);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/admin/product/adminProductManagement.jsp");
		dispatcher.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
