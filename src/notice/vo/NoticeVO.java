package notice.vo;

import java.sql.Date;

public class NoticeVO {
	private int num;
	private String title;
	private String content;
	private Date n_date;
	private int view_count;
	
	public NoticeVO(int num, String title, String content, Date n_date, int view_count) {
		super();
		this.num = num;
		this.title = title;
		this.content = content;
		this.n_date = n_date;
		this.view_count = view_count;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getN_date() {
		return n_date;
	}

	public void setN_date(Date n_date) {
		this.n_date = n_date;
	}

	public int getView_count() {
		return view_count;
	}

	public void setView_count(int view_count) {
		this.view_count = view_count;
	}

	@Override
	public String toString() {
		return "NoticeVO [num=" + num + ", title=" + title + ", content=" + content + ", n_date=" + n_date
				+ ", view_count=" + view_count + "]";
	}
	
	
}
