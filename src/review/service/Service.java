package review.service;

import java.util.ArrayList;

import model.ReviewVO;



public interface Service {
	void add(ReviewVO notice);

	ReviewVO getReview(int num);

	void editReview(ReviewVO notice);

	void delReview(int num);

	ArrayList<ReviewVO> getReviewAll();

	int makeNum();
}
