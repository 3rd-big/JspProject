package review.vo;

import java.sql.Date;

public class ReviewVO {
	private int num;
	private String m_id;
	private int rate;
	private String img;
	private Date r_date;
	private String content;
	
	public ReviewVO(int num, String m_id, int rate, String img, Date r_date, String content) {
		super();
		this.num = num;
		this.m_id = m_id;
		this.rate = rate;
		this.img = img;
		this.r_date = r_date;
		this.content = content;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public int getRate() {
		return rate;
	}

	public void setRate(int rate) {
		this.rate = rate;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public Date getR_date() {
		return r_date;
	}

	public void setR_date(Date r_date) {
		this.r_date = r_date;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "ReviewVO [num=" + num + ", m_id=" + m_id + ", rate=" + rate + ", img=" + img + ", r_date=" + r_date
				+ ", content=" + content + "]";
	}
	
	
}
