package review.service;

import java.util.ArrayList;

import model.ReviewVO;



public interface Service {
	void add(ReviewVO notice);

	ReviewVO getReview(int num);
	
	ArrayList<ReviewVO> getReviewByProductNum(int p_num);
	ArrayList<ReviewVO> getReviewInProductByPageNum(int p_num, int page);

	void editReview(ReviewVO notice);

	void delReview(int num);

	ArrayList<ReviewVO> getReviewAll();

	int makeNum();
	int getSelectedP_num(int r_num);
	ArrayList<ReviewVO> getMyReviewAll(String m_id, int page);
	int getcountMine(String m_id);
	int getcountByP_Num(int p_num);
}
