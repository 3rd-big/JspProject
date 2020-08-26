package member.service;

import model.MemberVO;

public interface Service {
	void join(MemberVO m); //가입
	MemberVO getMember(String id); //list
	void editMember(MemberVO m); //수정
	void remMember(String id);	//삭제, 탈퇴
	boolean login(String id, String pwd);	//로그인?
}
