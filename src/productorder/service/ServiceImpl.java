package productorder.service;

import java.util.ArrayList;

import model.ProductOrderVO;
import productorder.dao.Dao;
import productorder.dao.DaoImpl;


public class ServiceImpl implements Service{
	private Dao dao;
	public ServiceImpl() {
		dao = new DaoImpl();
	}
	
	@Override
	public void addOrder(ProductOrderVO o) {
		// TODO Auto-generated method stub
		dao.insert(o);
	}

	@Override
	public ProductOrderVO getOrder(int num) {
		// TODO Auto-generated method stub
		return dao.select(num);
	}

	@Override
	public ArrayList<ProductOrderVO> orderList(String m_id, int o_state) {
		// TODO Auto-generated method stub
		return dao.selectAll(m_id, o_state);
	}

	@Override
	public void editState(String type, int num) {
		dao.update(type, num);
	}

	@Override
	public void delOrder(int num) {
		dao.delete(num);
	}

	@Override
	public int makeProductOrderNum() {
		return dao.selectProductOrderNum();
	}

	@Override
	public void add(ProductOrderVO po) {
		dao.insert(po);
	}

	@Override
	public void editR_State(String m_id, int p_num) {
		// TODO Auto-generated method stub
		dao.updateR_State(m_id, p_num);
	}

}
