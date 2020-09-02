package product.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MemberVO;
import model.ProductVO;
import model.ReviewVO;
import product.service.Service;
import product.service.ServiceImpl;

@WebServlet("/DetailController")
public class DetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public DetailController() {

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text'html; charset=utf-8");
		response.setCharacterEncoding("UTF-8");
		
		Service service = new ServiceImpl();
		review.service.Service review_service = new review.service.ServiceImpl();
		member.service.Service member_service = new member.service.ServiceImpl();
		
		int num = Integer.parseInt(request.getParameter("num"));
		
		ProductVO product = service.getProduct(num);
		ArrayList<ReviewVO> reviews = review_service.getReviewByProductNum(num);
		ArrayList<MemberVO> members = member_service.getMemberByReviewId(reviews);

//		System.out.println(reviews.toString());
//		System.out.println(members.toString());
				
		request.setAttribute("product", product);
		request.setAttribute("reviews", reviews);
		request.setAttribute("members", members);	// TODO 추후 쓸 일 있으면 사용
		
		String path = "/views/product/detail.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
