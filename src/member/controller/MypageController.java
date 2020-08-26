package member.controller;

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
import model.MemberVO;

/**
 * Servlet implementation class MypageController
 */
@WebServlet("/MypageController")
public class MypageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MypageController() {
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

        //세션생성
        HttpSession session = request.getSession(false);
        //세션에 저장한 id 즉 로그인한 id를 읽는다.
        String id = (String) session.getAttribute("id");
        //id로 멤버 검색
        MemberVO m = service.getMember(id);
        //검색 결과인 객체 m을 request객체에 이름 m으로 저장
        request.setAttribute("m", m);
        //정보 페이지로 이동
        RequestDispatcher dispatcher = request.getRequestDispatcher("/views/mypage/myInfo.jsp");
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
