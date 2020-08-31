package review.controller;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import model.MemberVO;
import model.ProductOrderVO;
import model.ProductSizeVO;
import model.ProductVO;
import model.ReviewVO;
import review.service.Service;
import review.service.ServiceImpl;



/**
 * Servlet implementation class AddReviewFormController
 */
@WebServlet("/AddReviewFormController")
public class AddReviewFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddReviewFormController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		Service service = new ServiceImpl();
		HttpSession session = request.getSession(false);
	    String m_id = (String) session.getAttribute("id");
        
	    ReviewVO review = new ReviewVO();
	    
	    review.setM_id(m_id);
	    review.setNum(service.makeNum());
	    

		String r_img = "";
		int maxSize = 1024 * 1024 * 10;
		MultipartRequest multi = null;
		
		// TODO 각자 Workspace 환경으로 바꿀 것
		String uploadPath = "C:\\Web-kitri\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\webapps\\review_img";
		
		
		try {
			multi = new MultipartRequest(request, uploadPath, maxSize, "utf-8", new DefaultFileRenamePolicy());

			review.setContent(multi.getParameter("message"));
			review.setRate(Double.parseDouble(multi.getParameter("rate")));
			
			// 전송한 전체 파일이름들을 가져옴
			Enumeration files = multi.getFileNames();

			while (files.hasMoreElements()) {
				// form 태그에서 <input type="file" name="여기에 지정한 이름" />을 가져온다.
				String file1 = (String) files.nextElement();// 파일 input에 지정한 이름을 가져옴
				// 그에 해당하는 실재 파일 이름을 가져옴
				r_img = multi.getOriginalFileName(file1);
				// 파일업로드
				File file = multi.getFile(file1);
				review.setImg("/review_img/"+r_img);
				service.add(review);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(review.toString());
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/review/myReviewList.jsp");
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
