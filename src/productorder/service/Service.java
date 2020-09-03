package productorder.service;

import java.util.ArrayList;

import model.ProductOrderVO;

public interface Service {
	void addOrder(ProductOrderVO o);
	ProductOrderVO getOrder(int num);
	ArrayList<ProductOrderVO> orderList(String m_id, int o_state);
	void editState(String type, int num);
	void delOrder(int num);
	
	void add(ProductOrderVO po);
	int makeProductOrderNum();
	
	void editR_State(String m_id, int p_num);
}
