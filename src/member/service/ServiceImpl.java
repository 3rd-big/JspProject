package member.service;

import member.dao.Dao;
import member.dao.DaoImpl;
import model.MemberVO;

public class ServiceImpl implements Service {

	private Dao dao;

	public ServiceImpl() {
		this.dao = new DaoImpl();
	}

	@Override
	public void join(MemberVO m) {
		dao.insert(m);
	}

	@Override
	public MemberVO getMember(String id) {
		// TODO Auto-generated method stub
		return dao.select(id);
	}

	@Override
	public void editMember(MemberVO m) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void remMember(String id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean login(String id, String pwd) {
		// TODO Auto-generated method stub
		return false;
	}

	

}