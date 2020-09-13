package notice.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import model.NoticeVO;
import notice.service.Service;
import notice.service.ServiceImpl;

/**
 * Servlet implementation class DetailController
 */
@WebServlet("/ReadNoticeController")
public class ReadNoticeController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ReadNoticeController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		// 기능을 제공할 서비스 객체 생성
		Service service = new ServiceImpl();

		// 요청 파라메터 값 읽기
		int num = Integer.parseInt(request.getParameter("num"));

		// 글 하나 검색 기능 실행
		NoticeVO notice = service.getNotice(num);
		
		// System.out.println(notice.toString());

		request.setAttribute("notice", notice);
		
		
		
		// 조회수 증가 중복 방지 시작
		
		Map mapCookie = new HashMap();
        if(request.getCookies() != null)
        {
        	Cookie cookies[] = request.getCookies();
        	for(int i = 0; i < cookies.length; i++) 
        	{
        		Cookie obj = cookies[i]; 
        		mapCookie.put(obj.getName(), obj.getValue()); 
        	}
        }
        
        String cookieReadView = (String) mapCookie.get("readView"); 
        if(cookieReadView == null) {
        	cookieReadView = "";
        }
        
        System.out.println("확인" + cookieReadView);
        
        String newCookieReadView = "|" + num + "|";
        
        
        if(cookieReadView.indexOf(newCookieReadView) == -1) 
        {
        	
        	Cookie cookie = new Cookie("readView", cookieReadView + newCookieReadView);
        	response.addCookie(cookie);
        	
        	System.out.println("글 번호 " + num + "조회수 증가");
        	

        	service.updateViewCount(notice);
        
        }
		
        // 조회수 증가 중복 방지 끝
        
//        service.updateViewCount(notice);  태수 여기 주석처리
		// 글정보 출력페이지로 이동
		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/notice/search.jsp");
		if(dispatcher != null){
		//service.updateViewCount(notice);
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
