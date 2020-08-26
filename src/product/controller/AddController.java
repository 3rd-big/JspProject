package product.controller;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import model.ProductVO;
import product.service.Service;
import product.service.ServiceImpl;


@WebServlet("/AddController")
public class AddController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AddController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		response.setCharacterEncoding("UTF-8");
		
		Service service = new ServiceImpl();
		ProductVO p = new ProductVO();
		p.setNum(service.makeNum());
		
		String img = "";
		
		int maxSize = 1024 * 1024 * 10;
		MultipartRequest multi = null;
//		String uploadPath = request.getSession().getServletContext().getRealPath("/");
//		String uploadPath2 = request.getRealPath("/");
//		System.out.println("AddController 페이지");
//		System.out.println(uploadPath);
//		System.out.println(uploadPath2);
		String uploadPath = "C:\\JSP\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\webapps\\upload_img";
//		String uploadPath = "/JspProject/upload_img";
//		String uploadPath = request.getSession().getServletContext().getRealPath("upload_img");
//		String uploadPath =  request.getRealPath("");


		
		try {
			// request, 파일저장경로, 용량, 인코딩타입, 중복파일명에 대한 기본 정책
			multi = new MultipartRequest(request, uploadPath, maxSize, "utf-8", new DefaultFileRenamePolicy());
			System.out.println("multi: " + multi.toString());
			p.setName(multi.getParameter("name"));
			p.setPrice(Integer.parseInt(multi.getParameter("price")));
			p.setContent(multi.getParameter("content"));
			
			// 전송한 전체 파일이름들을 가져옴
			Enumeration files = multi.getFileNames();
			System.out.println("files: " + files.toString());
			
			while(files.hasMoreElements()) {
				// form 태그에서 <input type="file" name="여기에 지정한 이름" />을 가져온다.
				String file1= (String) files.nextElement();	// 파일 input에 지정한 이름을 가져옴
				System.out.println("file1: " + file1);
				
				// 그에 해당하는 실제 파일 이름을 가져옴
				img = multi.getOriginalFileName(file1); 
				System.out.println("img: " + img);
				
				//파일 업로드
				File file = multi.getFile(file1);
				System.out.println("file: " + file);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		p.setImg("/upload_img/" + img);
		service.add(p);
		
		// TODO 관리자가 상품등록 후 이동할 페이지 지정
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
