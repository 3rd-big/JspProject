package review.service;

import java.util.ArrayList;

import model.ReviewVO;
import review.dao.Dao;
import review.dao.DaoImpl;


public class ServiceImpl implements Service{
	private Dao dao;

	public ServiceImpl() {
		this.dao = new DaoImpl();
	}
	
	@Override
	public void add(ReviewVO review) {
		// TODO Auto-generated method stub
		dao.insert(review);
	}

	@Override
	public ReviewVO getReview(int num) {
		// TODO Auto-generated method stub
		return dao.select(num);
	}

	@Override
	public void editReview(ReviewVO review) {
		// TODO Auto-generated method stub
		dao.update(review);
	}

	@Override
	public void delReview(int num) {
		// TODO Auto-generated method stub
		dao.delete(num);
	}

	@Override
	public ArrayList<ReviewVO> getReviewAll() {
		// TODO Auto-generated method stub
		return dao.selectAll();
	}

	@Override
	public int makeNum() {
		// TODO Auto-generated method stub
		return dao.selectNum();
	}

}
