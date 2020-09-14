package review.controller;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import model.ProductOrderVO;
import model.ReviewVO;
import review.service.Service;
import review.service.ServiceImpl;

@WebServlet("/AddReviewController2")
public class AddReviewController2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AddReviewController2() {

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		response.setCharacterEncoding("UTF-8");
		
		Service service = new ServiceImpl();
		HttpSession session = request.getSession(false);
	    String m_id = (String) session.getAttribute("id");
		
	    ReviewVO review = new ReviewVO();
	    
	    review.setM_id(m_id);
	    
	    String reviewImgName = "";
	    String inputTagName = "";
	    
	    int maxSize = 1024 * 1024 * 10;
		MultipartRequest multi = null;
	   
		
		//TODO 여기 
//		String uploadPath = "C:\\Web-kitri\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\webapps\\review_img";
//		String uploadPath = "C:\\JSPClass\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\webapps\\upload_img";
		String uploadPath = "C:\\Web\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\webapps\\review_img";
		try {
			// 객체 생성하는 부분이 실제 톰캣서버에 업로드하는 과정이였음..
			multi = new MultipartRequest(request, uploadPath, maxSize, "utf-8", new DefaultFileRenamePolicy());

			review.setP_num(Integer.parseInt(multi.getParameter("p_num")));
			review.setContent(multi.getParameter("message"));
			review.setRate(Integer.parseInt(multi.getParameter("rate")));
			
			
			// TODO 이 부분 적립금수정에 사용
			System.out.println("num값: " + Integer.parseInt(multi.getParameter("num")));
			
			
			// 전송한 전체 파일이름들을 가져옴
			Enumeration files = multi.getFileNames();
			
			while(files.hasMoreElements()) {

				// form 태그에서 <input type="file" name="여기에 지정한 이름" />을 가져온다.
				inputTagName = (String) files.nextElement();	// 파일 input에 지정한 이름을 가져옴

				// 그에 해당하는 실제 파일 이름을 가져옴
				reviewImgName = multi.getOriginalFileName(inputTagName);
//				review.setImg("/upload_img/" + reviewImgName);
				review.setImg("/review_img/" + reviewImgName);
			
				//파일 업로드... 이건 파일 업로드가 아니였음
				File file1 = multi.getFile(inputTagName);

			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	
		service.add(review);
		
		productorder.service.Service service_po = new productorder.service.ServiceImpl();
		service_po.editR_State(m_id,Integer.parseInt(multi.getParameter("num")));
		
		// 적립금
		int o_num = Integer.parseInt(multi.getParameter("num"));
		ProductOrderVO po = new ProductOrderVO();
				
		service_po.editPoint(m_id, o_num);


	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
