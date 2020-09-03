package productorder.dao;

import java.util.ArrayList;

import model.ProductOrderVO;
import model.ProductVO;


public interface Dao {
	void insert(ProductOrderVO po);
	ProductOrderVO select(int num);
	ArrayList<ProductOrderVO> selectAll(String m_id, int o_state);
	void delete(int num);
	void update(String type, int num);
	
	int selectProductOrderNum();
	
	void updateR_State(String m_id, int p_num);
	
	ArrayList<ProductOrderVO> selectRecentOrder(String m_id);
}
