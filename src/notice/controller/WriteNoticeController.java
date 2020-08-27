package notice.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.NoticeVO;
import notice.service.Service;
import notice.service.ServiceImpl;

/**
 * Servlet implementation class AddController
 */
@WebServlet("/WriteNoticeController")
public class WriteNoticeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public WriteNoticeController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 요청과 응답의 인코딩 설정
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");

		// 기능을 제공할 서비스 객체 생성
		Service service = new ServiceImpl();

		//System.out.println(request.getParameter("title"));

		// 요청 파라메터 값 읽기
		String title = request.getParameter("title");
		String content = request.getParameter("content");

		NoticeVO notice = new NoticeVO();
		
		
		notice.setNum(service.makeNum());
		notice.setTitle(request.getParameter("title"));
		notice.setContent(request.getParameter("content"));
		
		//System.out.println(notice.toString());
		// 서비스의 글작성 기능 실행
		service.add(notice);
		// 글목록으로 이동
		RequestDispatcher dispatcher = request.getRequestDispatcher("/ListNoticeController");
		if (dispatcher != null) {
			dispatcher.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
