package review.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.ReviewVO;
import review.service.Service;
import review.service.ServiceImpl;

/**
 * Servlet implementation class EachReviewPopupController
 */
@WebServlet("/EachReviewPopupController")
public class EachReviewPopupController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EachReviewPopupController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Service service = new ServiceImpl();

		HttpSession session = request.getSession(false);
		String m_id = (String)session.getAttribute("id");
		
		int num = Integer.parseInt(request.getParameter("num")); 	//리뷰pk
		
//		ArrayList<ReviewVO> list = service.getMyReviewAll(m_id);
		System.out.println("PopupController이동");
		ReviewVO r = service.getReview(num);
		request.setAttribute("r", r);
		request.setAttribute("num", num);

		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/review/updateForm.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
