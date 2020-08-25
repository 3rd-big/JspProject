package notice.dao;

import java.util.ArrayList;

import model.NoticeVO;

public interface Dao {
	int selectNum();

	void insert(NoticeVO notice);

	NoticeVO select(int num);

	void update(NoticeVO notice);

	void delete(int num);

	ArrayList<NoticeVO> selectAll();
}
