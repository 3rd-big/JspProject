package productorder.dao;

import java.util.ArrayList;

import model.ProductOrderVO;


public interface Dao {
	void insert(ProductOrderVO o);
	ProductOrderVO select(int num);
	ArrayList<ProductOrderVO> selectAll(String m_id, int o_state);
	void delete(int num);
	void update(String type, int num);
}
