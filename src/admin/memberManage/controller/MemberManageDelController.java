package admin.memberManage.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.service.Service;
import member.service.ServiceImpl;

/**
 * Servlet implementation class MemberManageDelController
 */
@WebServlet("/MemberManageDelController")
public class MemberManageDelController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberManageDelController() {
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
        //서비스 객체 생성
        Service service = new ServiceImpl();
       
        String id = request.getParameter("id");
        
        System.out.println("받은 삭제할 아이디데이터 : " + id);
        

        //서비스에서 멤버 삭제 메소드 호출
        service.remMember(id);
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("/MemberManageController");
        if(dispatcher!=null) {
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
