package productorder.service;

import java.util.ArrayList;

import model.ProductOrderVO;
import model.ProductVO;

public interface Service {
	void addOrder(ProductOrderVO o);
	ProductOrderVO getOrder(int num);
	ArrayList<ProductOrderVO> orderList(String m_id, int o_state);
	ArrayList<ProductOrderVO> orderListByCNum(String m_id, int code_num);
	ArrayList<ProductOrderVO> simpleorderlist(String m_id, int o_state);
	void editState(String type, int num);
	void delOrder(int num);
	
	void add(ProductOrderVO po);
	int makeProductOrderNum();
	int makeProductOrderCodeNum();
	
	void editR_State(String m_id, int p_num);
	
	ArrayList<ProductOrderVO> getRecentOrderList(String m_id);
	
	void editPoint(String m_id, int o_num);
	
	int findProductInCartNum(String m_id, int p_num, String size);
	int findProductQuantity(int p_num, String psize);
}
