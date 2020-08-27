package admin.memberManage.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

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
 * Servlet implementation class MemberManageController
 */
@WebServlet("/MemberManageController")
public class MemberManageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberManageController() {
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
		ArrayList<MemberVO> members = service.getMemberAll();
		
		HttpSession session = request.getSession();
		System.out.println("session.getAttribute(type)" +session.getAttribute("memberType"));

		
		boolean adminFlag = false;
		int typeNum = 4;
		if ( session.getAttribute("memberType") != null) {
			adminFlag = true;
			typeNum = (int) session.getAttribute("memberType");
			System.out.println("typeNum:" + typeNum);
			
		} else {
			adminFlag = false;
			
		}
		
		
		if (typeNum == 0) {
			

			request.setAttribute("members", members);

			RequestDispatcher dispatcher = request.getRequestDispatcher("/views/admin/member/memberManage.jsp");
			dispatcher.forward(request, response);

		} else {
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('관리자 계정으로 로그인이 필요합니다.'); location.href='views/member/login.jsp'; </script>");
			writer.close();
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
