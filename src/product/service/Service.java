package product.service;

import java.util.ArrayList;

import model.ProductVO;

public interface Service {

	ArrayList<ProductVO> getProductAll();
	
	ArrayList<ProductVO> getBestProducts();
	
	ArrayList<ProductVO> getNewProducts();
	
	ProductVO getProduct(int num);
	
	int makeNum();
	
	void add(ProductVO p);
}
