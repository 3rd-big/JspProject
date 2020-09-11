package notice.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.NoticeVO;
import notice.service.Service;
import notice.service.ServiceImpl;

/**
 * Servlet implementation class ListNoticeAction
 */
@WebServlet("/ListNoticeAction")
public class ListNoticeAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ListNoticeAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @return 
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    public String requestPro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Service service = new ServiceImpl();
		int num = 0 ;
		if(request.getParameter("num")!=null){
			num=Integer.parseInt(request.getParameter("num"));
		}
		ArrayList<NoticeVO> notice = service.getCount();
		
		request.setAttribute("notice", notice);
		request.setAttribute("num", num);
		
		return "list.jsp";
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
