package member.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.service.Service;
import member.service.ServiceImpl;
import model.MemberVO;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		response.setCharacterEncoding("utf-8");

		String path = "/views/member/login.jsp";
		// 기능을 제공할 서비스 객체 생성
		Service service = new ServiceImpl();
		HttpSession session = request.getSession();

		// 로그인에 필요한 요청 파라메터을 읽는다.
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		

		int type = 3;
		// id로 멤버 검색
		MemberVO m = service.getMember(id);
		if (m != null && pwd.equals(m.getPwd())) {
			type = m.getType();
			session.setAttribute("id", id);
			session.setAttribute("memberType", type);
			if (type == 1) {
				//사용자 type=1
//				path = "/views/main/main.jsp";
				path = "/MainListController";
				
			} else if (type == 0) {
				//관리자 type=0
//				path = "/views/main/main.jsp";
				path = "/MainListController";
			}
		}

		/* String[] previousUriTokens = (request.getHeader("Referer")).split("/"); */
		String[] previousUriTokens = (request.getParameter("previousUriToken")).split("/"); 
		String previousUri = previousUriTokens[previousUriTokens.length - 1];
		System.out.println(request.getParameter("previousUriToken") + " Uri를 갖고 LoginController로 넘어옴");
		
		ArrayList<String> filterList = new ArrayList(Arrays.asList("LogoutController", "signup.jsp", "login.jsp", "searchPwd.jsp", "searchId.jsp", "AllOrderListController?o_state=1&page=1", "OrderlistController?o_state=1"));

		for (String list : filterList) {
			if(previousUri.equals(list)) {
				previousUri = "/MainListController";
			}
		}

		// 메뉴 페이지로 이동
		RequestDispatcher dispatcher = request.getRequestDispatcher(previousUri);
		if (dispatcher != null) {
			dispatcher.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
