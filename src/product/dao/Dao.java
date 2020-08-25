package product.dao;

import java.util.ArrayList;

import model.ProductVO;

public interface Dao {
	
	ArrayList<ProductVO> selectAll();
	
	ArrayList<ProductVO> selectBestProducts();
	
	ArrayList<ProductVO> selectNewProducts();
	
	int selectNum();
	
	void insert(ProductVO p);
	
	ProductVO select(int num);
}
