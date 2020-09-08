package review.dao;

import java.util.ArrayList;

import model.ReviewVO;



public interface Dao {
	int selectNum();
	int selectP_Num(int r_num);
	void insert(ReviewVO review);

	ReviewVO select(int num);
	
	ArrayList<ReviewVO> selectByP_Num(int p_num);

	void update(ReviewVO notice);

	void delete(int num);

	ArrayList<ReviewVO> selectAll();

	ArrayList<ReviewVO> myselectAll(String m_id, int page);
	int countallmine(String m_id);
}
