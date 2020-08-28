package admin.memberManage.dao;

import java.util.ArrayList;

import model.MemberVO;

public interface Dao {
	
	void update(MemberVO m);
	void delete(String id);

}
