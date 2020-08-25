package notice.service;

import java.util.ArrayList;

import model.NoticeVO;

public interface Service {
	void add(NoticeVO notice);

	NoticeVO getProduct(int num);

	void editProduct(NoticeVO notice);

	void delProduct(int num);

	ArrayList<NoticeVO> getProductAll();

	int makeNum();
}
