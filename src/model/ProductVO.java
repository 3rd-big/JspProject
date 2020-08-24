package model;


import java.sql.Date;

public class ProductVO {
	private int num;
	private String name;
	private int price;
	private String img;
	private String content;
	private Date e_date;
	private int record;
	
	public ProductVO() {}

	public ProductVO(int num, String name, int price, String img, String content, Date e_date, int record) {
		super();
		this.num = num;
		this.name = name;
		this.price = price;
		this.img = img;
		this.content = content;
		this.e_date = e_date;
		this.record = record;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getE_date() {
		return e_date;
	}

	public void setE_date(Date e_date) {
		this.e_date = e_date;
	}

	public int getRecord() {
		return record;
	}

	public void setRecord(int record) {
		this.record = record;
	}

	@Override
	public String toString() {
		return "ProductVO [num=" + num + ", name=" + name + ", price=" + price + ", img=" + img + ", content=" + content
				+ ", e_date=" + e_date + ", record=" + record + "]";
	}

	
	
}
