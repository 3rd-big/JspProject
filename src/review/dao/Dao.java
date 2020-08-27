package review.dao;

import java.util.ArrayList;

import model.ReviewVO;



public interface Dao {
	int selectNum();

	void insert(ReviewVO notice);

	ReviewVO select(int num);

	void update(ReviewVO notice);

	void delete(int num);

	ArrayList<ReviewVO> selectAll();
}
