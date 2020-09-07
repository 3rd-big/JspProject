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
	public int makeProductOrderCodeNum() {
		return dao.selectProductOrderCodeNum();
	}

	@Override
	public void add(ProductOrderVO po) {
		dao.insert(po);
	}

	@Override
	public void editR_State(String m_id, int o_num) {
		// TODO Auto-generated method stub
		dao.updateR_State(m_id, o_num);
	}

	@Override
	public ArrayList<ProductOrderVO> getRecentOrderList(String m_id) {
		// TODO Auto-generated method stub
		return dao.selectRecentOrder(m_id);
	}

	@Override
	public void editPoint(String m_id, int o_num) {
		dao.updatePoint(m_id, o_num);
		
	}

	@Override
	public int findProductInCartNum(String m_id, int p_num, String size) {
		return dao.selectProductInCartNum(m_id, p_num, size);
	}

	@Override
	public int findProductQuantity(int p_num, String psize) {
		return dao.selectProductQuantity(p_num, psize);
	}

	@Override
	public ArrayList<ProductOrderVO> orderListByCNum(String m_id, int code_num) {
		// TODO Auto-generated method stub
		return dao.selectAllByCNum(m_id, code_num);
	}

	@Override
	public ArrayList<ProductOrderVO> simpleorderlist(String m_id, int o_state) {
		// TODO Auto-generated method stub
		return dao.selectAllsimpleorderlist(m_id, o_state);
	}


}
