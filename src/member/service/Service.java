package member.service;

import model.MemberVO;

public interface Service {
	void join(MemberVO m); //����
	MemberVO getMember(String id); //list
	void editMember(MemberVO m); //����
	void remMember(String id);	//����, Ż��
	boolean login(String id, String pwd);	//�α���?
}
