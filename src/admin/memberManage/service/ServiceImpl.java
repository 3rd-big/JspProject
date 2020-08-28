package admin.memberManage.service;

import admin.memberManage.dao.Dao;
import admin.memberManage.dao.DaoImpl;
import model.MemberVO;

public class ServiceImpl implements Service {
	
	private Dao dao;
	
	public ServiceImpl() {
		this.dao = new DaoImpl();
	}

	@Override
	public void editMember(MemberVO m) {
		
		dao.update(m);
		
	}

	@Override
	public void remMember(String id) {
		
		dao.delete(id);
		
	}

}
