package member.dao;

import java.util.ArrayList;

import model.MemberVO;
import model.ReviewVO;

public interface Dao {

	void insert(MemberVO m);
	MemberVO select(String id);
	void update(MemberVO m);
	void delete(String id);
	
	ArrayList<MemberVO> selectAllMember();
	ArrayList<MemberVO> selectMemberByReviewId(ArrayList<ReviewVO> r);
	
	MemberVO selectId(String email);
	void updatePwd(String email, String id);
	int checkOverId(String id);
}
