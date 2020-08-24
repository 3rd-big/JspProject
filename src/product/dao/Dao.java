package product.dao;

import java.util.ArrayList;

import model.ProductVO;

public interface Dao {
	ArrayList<ProductVO> selectAll();
	
	int selectNum();
	
	void insert(ProductVO p);
}
