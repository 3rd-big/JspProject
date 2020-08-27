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
 * Servlet implementation class EditNoticeController
 */
@WebServlet("/EditNoticeController")
public class EditNoticeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditNoticeController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Service service = new ServiceImpl();

		int num = Integer.parseInt(request.getParameter("num"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");

		NoticeVO notice = new NoticeVO(num, title, content);

		System.out.println(notice.toString());
		
		service.editNotice(notice);

		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/notice/list.jsp");
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
