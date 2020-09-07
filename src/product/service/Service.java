package product.service;

import java.util.ArrayList;

import model.ProductImageVO;
import model.ProductSizeVO;
import model.ProductVO;

public interface Service {

	ArrayList<ProductVO> getProductAll();
	
	ArrayList<ProductVO> getBestProducts(int numberItems);
	
	ArrayList<ProductVO> getNewProducts(int numberItems);
	
	ArrayList<ProductVO> getCategoryProducts(String category);
	
	ArrayList<ProductVO> getCategoryProductsByPageNum(String category, int page);
	
	ArrayList<ProductVO> getCategoryProductsSort(String category, int page, String orderBy);
	
	ArrayList<ProductImageVO> getDetailImgAll(int p_num);
	
	ProductVO getProduct(int num);
	
	int checkQuantity(int productNum, String size);
	
	int makeProductNum();
	
	int makeProductImgNum();
	
	int makeProductSizeNum();
	
	void add(ProductVO p);
	
	void add(ProductImageVO pi);
	
	void add(ProductSizeVO ps);
	
	void addQuantity(ProductSizeVO ps);
	
	void delProduct(int num);
}
