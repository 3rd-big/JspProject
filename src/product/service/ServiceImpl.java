package product.service;

import java.util.ArrayList;

import model.ProductImageVO;
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
	public ArrayList<ProductVO> getBestProducts() {
		return dao.selectBestProducts();
	}

	@Override
	public ArrayList<ProductVO> getNewProducts() {
		return dao.selectNewProducts();
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
	public void add(ProductVO p) {
		dao.insert(p);
	}	
	
	@Override
	public void add(ProductImageVO pi) {
		 dao.insert(pi);
	}

	@Override
	public ProductVO getProduct(int num) {
		return dao.select(num);
	}

}
