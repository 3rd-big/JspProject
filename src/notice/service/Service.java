package notice.service;

import java.util.ArrayList;

import model.NoticeVO;

public interface Service {
	void add(NoticeVO notice);

	NoticeVO getNotice(int num);

	void editNotice(NoticeVO notice);

	void delNotice(int num);

	ArrayList<NoticeVO> getNoticeAll();

	//int makeNum();

	void updateViewCount(NoticeVO notice);
}
