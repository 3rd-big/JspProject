package member.service;

import java.util.ArrayList;

import model.MemberVO;

public interface Service {
	void join(MemberVO m); 
	MemberVO getMember(String id); 
	void editMember(MemberVO m); 
	void remMember(String id);	
	boolean login(String id, String pwd);
	
	ArrayList<MemberVO> getMemberAll();
	
	
	
	
}
