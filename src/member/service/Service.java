package member.service;

import java.util.ArrayList;

import model.MemberVO;
import model.ReviewVO;

public interface Service {
	void join(MemberVO m); 
	MemberVO getMember(String id); 
	void editMember(MemberVO m); 
	void remMember(String id);	
	boolean login(String id, String pwd);
	
	ArrayList<MemberVO> getMemberAll();
	ArrayList<MemberVO> getMemberByReviewId(ArrayList<ReviewVO> r);
	
	MemberVO searchId(String email);

}
