package product.controller;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import model.ProductImageVO;
import model.ProductVO;
import product.service.Service;
import product.service.ServiceImpl;


@WebServlet("/ProductAddController")
public class ProductAddController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ProductAddController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=utf-8");
		response.setCharacterEncoding("UTF-8");
		
		Service service = new ServiceImpl();
		ProductVO p = new ProductVO();
		ProductImageVO pi = new ProductImageVO();
		
		int seqProductNum = service.makeProductNum();
		p.setNum(seqProductNum);
		pi.setP_num(seqProductNum);
		
		
		String thumbnailImgName = "";
		String detailImgName = "";
		String inputTagName = "";
		
		
		int maxSize = 1024 * 1024 * 10;
		MultipartRequest multi = null;

		// TODO 각자 Workspace 환경으로 바꿀 것
//		String uploadPath = "C:\\JSP\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\webapps\\upload_img";
		String uploadPath = "C:\\JSPClass\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\webapps\\upload_img";
		
		try {
			
			if(-1 < request.getContentType().indexOf("multipart/form-data")) {
				// request, 파일저장경로, 용량, 인코딩타입, 중복파일명에 대한 기본 정책
				multi = new MultipartRequest(request, uploadPath, maxSize, "utf-8", new DefaultFileRenamePolicy());		
			}

			p.setName(multi.getParameter("name"));
			p.setPrice(Integer.parseInt(multi.getParameter("price")));
			p.setContent(multi.getParameter("content"));

			// 대표이미지 업로드
			thumbnailImgName = multi.getOriginalFileName("file");	
			p.setImg("/upload_img/" + thumbnailImgName);
			service.add(p);
			//파일 업로드
			File file = multi.getFile("file");

				
			// 전송한 전체 파일이름들을 가져옴
			Enumeration files = multi.getFileNames();
			
			// 상세이미지 업로드
			while(files.hasMoreElements()) {

				// form 태그에서 <input type="file" name="여기에 지정한 이름" />을 가져온다.
				inputTagName = (String) files.nextElement();	// 파일 input에 지정한 이름을 가져옴

				if(!inputTagName.equals("file")) {
					// 그에 해당하는 실제 파일 이름을 가져옴
					detailImgName = multi.getOriginalFileName(inputTagName);
					if(detailImgName != null) {
						//StringUtils.isNotBlank(detailImgName)
						pi.setNum(service.makeProductImgNum());
						pi.setImg("/upload_img/" + detailImgName);
						
						service.add(pi);
						//파일 업로드
						File file1 = multi.getFile(inputTagName);
					}
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/ProductAllListController");
		dispatcher.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
