package product.dao;

import java.util.ArrayList;

import model.ProductImageVO;
import model.ProductVO;

public interface Dao {
	
	ArrayList<ProductVO> selectAll();
	
	ArrayList<ProductVO> selectBestProducts();
	
	ArrayList<ProductVO> selectNewProducts();
	
	int selectProductNum();
	
	int selectProductImgNum();
	
	void insert(ProductVO p);
	
	void insert(ProductImageVO pi);
	
	ProductVO select(int num);
}
