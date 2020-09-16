package product.service;

import java.util.ArrayList;

import model.ProductImageVO;
import model.ProductSizeVO;
import model.ProductVO;
import product.dao.Dao;
import product.dao.DaoImpl;

public class ServiceImpl implements Service{
	
	private Dao dao;
	
	public ServiceImpl() {
		this.dao = new DaoImpl();
	}

	@Override
	public ArrayList<ProductVO> getProductAll() {
		return dao.selectAll();
	}
	
	@Override
	public ArrayList<ProductVO> getProductManagementByPageNum(int page) {
		return dao.selectAllByPageNum(page);
	}
	
	@Override
	public ArrayList<ProductVO> getBestProducts(int numberItems) {
		return dao.selectBestProducts(numberItems);
	}

	@Override
	public ArrayList<ProductVO> getNewProducts(int numberItems) {
		return dao.selectNewProducts(numberItems);
	}

	@Override
	public ArrayList<ProductVO> getCategoryProducts(String category) {
		return dao.selectCategoryProducts(category);
	}
	
	@Override
	public ArrayList<ProductVO> getCategoryProductsByPageNum(String category, int page) {
		return dao.selectCategoryProductsByPageNum(category, page);
	}
	
	@Override
	public ArrayList<ProductVO> getCategoryProductsSort(String category, int page, String orderBy) {
		return dao.selectCategoryProductsSort(category, page, orderBy);
	}

	@Override
	public ArrayList<ProductVO> getKeywordProductsByPageNum(String keyword, int page) {
		return dao.selectKeywordProductsByPageNum(keyword, page);
	}

	@Override
	public ArrayList<ProductVO> getKeywordProductsSort(String keyword, int page, String orderBy) {
		return dao.selectKeywordProductsSort(keyword, page, orderBy);
	}
	
	@Override
	public ArrayList<ProductImageVO> getDetailImgAll(int p_num) {
		return dao.selectDetailImages(p_num);
	}

	@Override
	public int checkQuantity(int productNum, String size) {
		return dao.selectQuantity(productNum, size);
	}
	
	@Override
	public int makeProductNum() {
		return dao.selectProductNum();
	}

	@Override
	public int makeProductImgNum() {
		return dao.selectProductImgNum();
	}

	@Override
	public int makeProductSizeNum() {
		return dao.selectProductSizeNum();
	}
	
	@Override
	public void add(ProductVO p) {
		dao.insert(p);
	}	
	
	@Override
	public void add(ProductImageVO pi) {
		 dao.insert(pi);
	}
	
	@Override
	public void add(ProductSizeVO ps) {
		dao.insert(ps);
	}

	@Override
	public ProductVO getProduct(int num) {
		return dao.select(num);
	}

	@Override
	public void addQuantity(ProductSizeVO ps) {
		dao.update(ps);
	}

	@Override
	public void delProduct(int num) {
		dao.delete(num);
	}

}
