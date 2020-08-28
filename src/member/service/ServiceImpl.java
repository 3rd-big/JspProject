package member.service;

import java.util.ArrayList;

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
		return dao.select(id);
	}

	@Override
	public void editMember(MemberVO m) {
		dao.update(m);
	}

	@Override
	public void remMember(String id) {
		dao.delete(id);
	}

	@Override
	public boolean login(String id, String pwd) {
		MemberVO m = dao.select(id);
		if (m == null || !m.getPwd().equals(pwd)) {
			return false;
		} else {
			return true;
		}
	}

	@Override
	public ArrayList<MemberVO> getMemberAll() {
		// TODO Auto-generated method stub
		return dao.selectAllMember();
	}

	

}