package product.service;

import java.util.ArrayList;

import model.ProductImageVO;
import model.ProductSizeVO;
import model.ProductVO;

public interface Service {

	ArrayList<ProductVO> getProductAll();
	
	ArrayList<ProductVO> getBestProducts();
	
	ArrayList<ProductVO> getNewProducts();
	
	ProductVO getProduct(int num);
	
	int makeProductNum();
	
	int makeProductImgNum();
	
	int makeProductSizeNum();
	
	void add(ProductVO p);
	
	void add(ProductImageVO pi);
	
	void add(ProductSizeVO ps);
}
