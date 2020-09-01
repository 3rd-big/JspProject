package model;

import java.sql.Date;

public class ProductOrderVO {
	private int num;
	private int p_num;
	private int o_quantity;
	private int total_price;
	private String m_id;
	private Date o_date;
	private int o_state;
	private int d_state;
	private int r_state;
	private String p_size;
	private String prod_name;
	private String prod_img;
	
	
	public ProductOrderVO() {
		
	}
	
	

	public ProductOrderVO(int num, int p_num, int o_quantity, int total_price, String m_id, Date o_date, int o_state,
			int d_state, String p_size) {
		super();
		this.num = num;
		this.p_num = p_num;
		this.o_quantity = o_quantity;
		this.total_price = total_price;
		this.m_id = m_id;
		this.o_date = o_date;
		this.o_state = o_state;
		this.d_state = d_state;
		this.p_size = p_size;
	}

	public ProductOrderVO(int num, int p_num, int o_quantity, int total_price, String m_id, Date o_date, int o_state,
			int d_state, String p_size, int r_state) {
		super();
		this.num = num;
		this.p_num = p_num;
		this.o_quantity = o_quantity;
		this.total_price = total_price;
		this.m_id = m_id;
		this.o_date = o_date;
		this.o_state = o_state;
		this.d_state = d_state;
		this.p_size = p_size;
		this.r_state=r_state;
	}


	public ProductOrderVO(int num, int p_num, int o_quantity, int total_price, String m_id, Date o_date, int o_state,
			int d_state, String p_size, String prod_name, String prod_img) {
		super();
		this.num = num;
		this.p_num = p_num;
		this.o_quantity = o_quantity;
		this.total_price = total_price;
		this.m_id = m_id;
		this.o_date = o_date;
		this.o_state = o_state;
		this.d_state = d_state;
		this.p_size = p_size;
		this.prod_name = prod_name;
		this.prod_img = prod_img;
	}

	public ProductOrderVO(int num, int p_num, int o_quantity, int total_price, String m_id, Date o_date, int o_state,
			int d_state, int r_state, String p_size, String prod_name, String prod_img) {
		super();
		this.num = num;
		this.p_num = p_num;
		this.o_quantity = o_quantity;
		this.total_price = total_price;
		this.m_id = m_id;
		this.o_date = o_date;
		this.o_state = o_state;
		this.d_state = d_state;
		this.r_state = r_state;
		this.p_size = p_size;
		this.prod_name = prod_name;
		this.prod_img = prod_img;
	}


	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public int getP_num() {
		return p_num;
	}

	public void setP_num(int p_num) {
		this.p_num = p_num;
	}

	public int getO_quantity() {
		return o_quantity;
	}

	public void setO_quantity(int o_quantity) {
		this.o_quantity = o_quantity;
	}

	public int getTotal_price() {
		return total_price;
	}

	public void setTotal_price(int total_price) {
		this.total_price = total_price;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public Date getO_date() {
		return o_date;
	}

	public void setO_date(Date o_date) {
		this.o_date = o_date;
	}

	public int getO_state() {
		return o_state;
	}

	public void setO_state(int o_state) {
		this.o_state = o_state;
	}

	public int getD_state() {
		return d_state;
	}

	public void setD_state(int d_state) {
		this.d_state = d_state;
	}

	public String getProd_name() {
		return prod_name;
	}

	public void setProd_name(String prod_name) {
		this.prod_name = prod_name;
	}

	public String getProd_img() {
		return prod_img;
	}

	public void setProd_img(String prod_img) {
		this.prod_img = prod_img;
	}

	public String getP_size() {
		return p_size;
	}

	public void setP_size(String p_size) {
		this.p_size = p_size;
	}

	

	@Override
	public String toString() {
		return "ProductOrderVO [num=" + num + ", p_num=" + p_num + ", o_quantity=" + o_quantity + ", total_price="
				+ total_price + ", m_id=" + m_id + ", o_date=" + o_date + ", o_state=" + o_state + ", d_state="
				+ d_state + ", r_state=" + r_state + ", p_size=" + p_size + ", prod_name=" + prod_name + ", prod_img="
				+ prod_img + "]";
	}



	public int getR_state() {
		return r_state;
	}



	public void setR_state(int r_state) {
		this.r_state = r_state;
	}
	
	
	
}
