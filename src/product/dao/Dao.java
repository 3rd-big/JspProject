package product.dao;

import java.util.ArrayList;

import model.ProductImageVO;
import model.ProductSizeVO;
import model.ProductVO;

public interface Dao {
	
	ArrayList<ProductVO> selectAll();
	
	ArrayList<ProductVO> selectBestProducts();
	
	ArrayList<ProductVO> selectNewProducts();
	
	ArrayList<ProductImageVO> selectDetailImages(int p_num);
	
	int selectProductNum();
	
	int selectProductImgNum();
	
	int selectProductSizeNum();
	
	void insert(ProductVO p);
	
	void insert(ProductImageVO pi);
	
	void insert(ProductSizeVO ps);
	
	void update(ProductSizeVO ps);
	
	ProductVO select(int num);
	
	int selectQuantity(int productNum, String size);
}
