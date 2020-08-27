package product.service;

import java.util.ArrayList;

import model.ProductImageVO;
import model.ProductVO;

public interface Service {

	ArrayList<ProductVO> getProductAll();
	
	ArrayList<ProductVO> getBestProducts();
	
	ArrayList<ProductVO> getNewProducts();
	
	ProductVO getProduct(int num);
	
	int makeProductNum();
	
	int makeProductImgNum();
	
	void add(ProductVO p);
	
	void add(ProductImageVO pi);
}
