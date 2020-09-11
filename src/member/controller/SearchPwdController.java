package member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.service.Service;
import member.service.ServiceImpl;
import model.MemberVO;
import java.util.UUID;
/**
 * Servlet implementation class SearchPwdController
 */
@WebServlet("/SearchPwdController")
public class SearchPwdController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchPwdController() {
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

		String email = request.getParameter("email");
		String id = request.getParameter("id");

		MemberVO m=service.searchId(email); //이메일로 아이디를 찾아서 그 아이디에 해당하는 모든 열 
		request.setAttribute("m", m);
		
		if(m.getId().equals(null)) {
			
		}else {
			service.editPwd(email, id);
			MemberVO member = service.getMember(id);
			request.setAttribute("member", member);
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/member/getPwd.jsp");
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
