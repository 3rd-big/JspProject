package product.dao;

import java.util.ArrayList;

import model.ProductImageVO;
import model.ProductSizeVO;
import model.ProductVO;

public interface Dao {
	
	ArrayList<ProductVO> selectAll();
	
	ArrayList<ProductSizeVO> selectSizeAll(int p_num);
	
	ArrayList<ProductVO> selectAllByPageNum(int page);
	
	ArrayList<ProductVO> selectBestProducts(int numberItems);
	
	ArrayList<ProductVO> selectNewProducts(int numberItems);

	ArrayList<ProductVO> selectCategoryProducts(String category);
	
	ArrayList<ProductVO> selectCategoryProductsByPageNum(String category, int page);
	
	ArrayList<ProductVO> selectCategoryProductsSort(String category, int page, String orderBy);
	
	ArrayList<ProductVO> selectKeywordProductsByPageNum(String keyword, int page);
	
	ArrayList<ProductVO> selectKeywordProductsSort(String keyword, int page, String orderBy);
	
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
	
	void delete(int num);
}
