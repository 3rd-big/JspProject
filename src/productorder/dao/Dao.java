package productorder.dao;

import java.util.ArrayList;

import model.OrderInfoVO;
import model.ProductOrderVO;
import model.ProductVO;


public interface Dao {
	void insert(ProductOrderVO po);
	ProductOrderVO select(int num);
	ArrayList<ProductOrderVO> selectAll(String m_id, int o_state);	//주문한 모든 상품 by 상품별
	ArrayList<ProductOrderVO> selectAllByCNum(String m_id, int code_num); //주문 번호 별 주문 상품
	ArrayList<ProductOrderVO> selectAllsimpleorderlist(String m_id, int o_state, int page); //주문한 모든 상품 list 
	int countAllByCNum(String m_id, int o_state); //페이징 위한 totalcount 
	void delete(int num);
	void update(String type, int num);
	
	int selectProductOrderNum();
	int selectProductOrderCodeNum();
	
	void updateR_State(String m_id, int o_num);
	
	ArrayList<ProductOrderVO> selectRecentOrder(String m_id);
	
	void updatePoint(String m_id, int o_num);
	
	int selectProductInCartNum(String m_id, int p_num, String size);
	int selectProductQuantity(int p_num, String psize);
	
	int selectCartListCountById(String m_id);
	
	
	int selectOrderInfoNum();
	
	
	void insert(OrderInfoVO oivo);
	void updateCode_num(ProductOrderVO po);
	
	
}
