package productorder.service;

import java.util.ArrayList;

import model.OrderInfoVO;
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
	public ArrayList<ProductOrderVO> orderListByCNum(String m_id, String code_num) {
		// TODO Auto-generated method stub
		return dao.selectAllByCNum(m_id, code_num);
	}

	@Override
	public ArrayList<ProductOrderVO> simpleorderlist(String m_id, int o_state, int page) {
		// TODO Auto-generated method stub
		return dao.selectAllsimpleorderlist(m_id, o_state, page);
	}

	@Override
	public int getCountOrder(String m_id, int o_state) {
		// TODO Auto-generated method stub
		return dao.countAllByCNum(m_id, o_state);
	}

	@Override
	public int getCartListCountById(String m_id) {
		return dao.selectCartListCountById(m_id);
	}

	@Override
	public void addOrderInfo(OrderInfoVO oivo) {
		dao.insert(oivo);
		
	}

	@Override
	public int makeOrderInfoNum() {
		
		return dao.selectOrderInfoNum();
	}

	@Override
	public void updateCode_num(ProductOrderVO po) {
		dao.updateCode_num(po);
		
	}

	@Override
	public OrderInfoVO getPaymentInfo(String code_num) {
		// TODO Auto-generated method stub
		return dao.selectOrderInfo(code_num);
	}
	
	


}
