package admin.memberManage.controller;

import java.io.IOException;
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
 * Servlet implementation class MemberManagePopupController
 */
@WebServlet("/MemberManagePopupController")
public class MemberManagePopupController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberManagePopupController() {
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
        
        Service service = new ServiceImpl();
        
        
        String id1 = request.getParameter("currentId");
        System.out.println(id1);
        
        
        
        MemberVO member = service.getMember(id1);
        
        request.setAttribute("member", member);
        
		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/admin/member/memberManagePopup.jsp");
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
