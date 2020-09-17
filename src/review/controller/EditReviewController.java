package review.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
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

import model.ReviewVO;
import review.service.Service;
import review.service.ServiceImpl;

/**
 * Servlet implementation class EditReviewController
 */
@WebServlet("/EditReviewController")
public class EditReviewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditReviewController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		Service service = new ServiceImpl();
		HttpSession session = request.getSession(false);
	    String m_id = (String) session.getAttribute("id");

	    
//	    int r_num = Integer.parseInt(request.getParameter("r_num"));
//	    System.out.println("r_num은"+r_num);
////	    int p_num = Integer.parseInt(request.getParameter("p_num"));
//	    int p_num = service.getSelectedP_num(r_num);
//
//
//	    ReviewVO review = new ReviewVO();
//	    review.setNum(r_num);
//	    review.setM_id(m_id);
//	    review.setP_num(p_num);

	    
	    ReviewVO review = new ReviewVO();
	    review.setM_id(m_id);

	    //
//	    ReviewVO before = service.getReview(r_num);
//	    String before_img = before.getImg();
	    
	    
	    String review_img = "";
	    int maxSize =1024 *1024 *10;
		MultipartRequest multi = null;
		
		
//		String uploadPath = "C:\\Web-kitri\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\webapps\\review_img";
		String uploadPath = "C:\\Web\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\webapps\\review_img";
		try {
			// request,파일저장경로,용량,인코딩타입,중복파일명에 대한 기본 정책
			multi = new MultipartRequest(request, uploadPath, maxSize, "utf-8", 
		new DefaultFileRenamePolicy());
			//
			int num = Integer.parseInt(multi.getParameter("num"));
			review.setNum(num);
			int p_num = service.getSelectedP_num(num);
			ReviewVO before = service.getReview(num);
		    String before_img = before.getImg();
			//
		    review.setP_num(p_num);
		    
			review.setRate(Integer.parseInt(multi.getParameter("rate")));
			review.setContent(multi.getParameter("message"));
			// 전송한 전체 파일이름들을 가져옴
			Enumeration files = multi.getFileNames();

			while(files.hasMoreElements()) {
				// form 태그에서 <input type="file" name="여기에 지정한 이름" />을 가져온다.
			String file1 = (String) files.nextElement();// 파일 input에 지정한 이름을 가져옴
				// 그에 해당하는 실재 파일 이름을 가져옴
				review_img = multi.getOriginalFileName(file1);

				review.setImg("/review_img/" + review_img);
				
				//파일업로드
				File file = multi.getFile(file1);
					String reviewimg = review.getImg();
				if(reviewimg.equals("/review_img/null")) {
					review.setImg(before_img);
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		review.setR_date(review.getR_date());
		
		service.editReview(review);

//		RequestDispatcher dispatcher = request.getRequestDispatcher("/ListReviewController");
//		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
