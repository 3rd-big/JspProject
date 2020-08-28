package admin.memberManage.service;

import model.MemberVO;

public interface Service {
	
	void editMember(MemberVO m); 
	void remMember(String id);

}
