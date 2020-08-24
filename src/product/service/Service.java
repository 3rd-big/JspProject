package product.service;

import java.util.ArrayList;

import product.vo.ProductVO;

public interface Service {

	ArrayList<ProductVO> getProductAll();
	
	int makeNum();
	
	void add(ProductVO p);
}
