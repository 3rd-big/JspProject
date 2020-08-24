package product.service;

import java.util.ArrayList;

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
	public int makeNum() {
		return dao.selectNum();
	}

	@Override
	public void add(ProductVO p) {
		
	}

}
