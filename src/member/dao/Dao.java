package member.dao;

import java.util.ArrayList;

import model.MemberVO;

public interface Dao {

	void insert(MemberVO m);
	MemberVO select(String id);
	void update(MemberVO m);
	void delete(String id);
	
	ArrayList<MemberVO> selectAllMember();

}
