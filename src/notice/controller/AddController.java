package notice.controller;

import java.io.IOException;

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
@WebServlet(name = "noticeAddController", urlPatterns = { "/noticeAddController" })
public class AddController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println(request.getParameter("title"));
		
		
		Service service = new ServiceImpl();
		NoticeVO notice = new NoticeVO();
		notice.setNum(service.makeNum());
		
		try {
		//	notice.setNum(Integer.parseInt("num"));
			notice.setTitle(request.getParameter("title"));
			notice.setContent(request.getParameter("content"));

		//	notice.setView_count(Integer.parseInt("view_count"));
		}catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(notice.toString());
		service.add(notice);
		response.sendRedirect("/views/notice_list.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
