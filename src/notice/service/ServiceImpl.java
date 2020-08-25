package notice.service;

import java.util.ArrayList;

import model.NoticeVO;
import notice.dao.Dao;
import notice.dao.DaoImpl;

public class ServiceImpl implements Service {
	private Dao dao;

	public ServiceImpl() {
		this.dao = new DaoImpl();
	}

	@Override
	public void add(NoticeVO notice) {
		// TODO Auto-generated method stub
		dao.insert(notice);
	}

	@Override
	public NoticeVO getProduct(int num) {
		// TODO Auto-generated method stub
		return dao.select(num);
	}

	@Override
	public void editProduct(NoticeVO notice) {
		// TODO Auto-generated method stub
		dao.update(notice);
	}

	@Override
	public void delProduct(int num) {
		// TODO Auto-generated method stub
		dao.delete(num);
	}

	@Override
	public int makeNum() {
		// TODO Auto-generated method stub
		return dao.selectNum();
	}

	@Override
	public ArrayList<NoticeVO> getProductAll() {
		// TODO Auto-generated method stub
		return dao.selectAll();
	}
}
