package productorder.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import conn.DBConnect;
import model.OrderInfoVO;
import model.ProductOrderVO;

public class DaoImpl implements Dao {
	private DBConnect db;

	public DaoImpl() {
		db = DBConnect.getInstance();
	}

	@Override
	public void insert(ProductOrderVO po) {
		Connection conn = db.getConnection();

		String sql = "insert into product_order values(?, ?, ?, ?, ?, sysdate, ?, ?, ?, ?, ?)";

		PreparedStatement pstmt = null;

		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, po.getNum());
			pstmt.setInt(2, po.getP_num());
			pstmt.setInt(3, po.getO_quantity());
			pstmt.setInt(4, po.getTotal_price());
			pstmt.setString(5, po.getM_id());
			pstmt.setInt(6, po.getO_state());
			pstmt.setInt(7, po.getD_state());
			pstmt.setString(8, po.getP_size());
			pstmt.setInt(9, po.getR_state()); // r_state 추가 // 선정 수정 // setR_state()를 해주지 않아도 기본 0값
			pstmt.setString(10, po.getCode_num()); // code_num추가 // 선정

			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				// 자원 반환
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	@Override
	public ProductOrderVO select(int num) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ProductOrderVO o = null;

		String sql = "select * from PRODUCT_ORDER where num=?";
		try {
			conn = db.getConnection();

			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				return new ProductOrderVO(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4), rs.getString(5),
						rs.getDate(6), rs.getInt(7), rs.getInt(8), rs.getString(9), rs.getInt(10), rs.getString(11));
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return null;
	}

	@Override
	public ArrayList<ProductOrderVO> selectAll(String m_id, int o_state) {

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		ArrayList<ProductOrderVO> list = new ArrayList<ProductOrderVO>();

		String sql = "select * from PRODUCT_ORDER where m_id=? and o_state=? order by o_date desc";

		try {
			conn = db.getConnection();

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, m_id);
			pstmt.setInt(2, o_state);

			rs = pstmt.executeQuery();
			while (rs.next()) {
				list.add(new ProductOrderVO(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4), rs.getString(5),
						rs.getDate(6), rs.getInt(7), rs.getInt(8), rs.getString(9), rs.getInt(10), rs.getString(11)));

			}

			System.out.println(m_id);
			System.out.println(o_state);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return list;
	}

	@Override
	public void delete(int num) {
		// TODO Auto-generated method stub

	}

	@Override
	public void update(String type, int num) {
		// TODO Auto-generated method stub

	}

	@Override
	public int selectProductOrderNum() {
		Connection conn = db.getConnection();

		String sql = "select seq_product_order.nextval from dual";
		ResultSet rs = null;
		PreparedStatement pstmt = null;

		int num = 0;

		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				num = rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				// 자원 반환
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return num;
	}

	@Override
	public int selectProductOrderCodeNum() {
		Connection conn = db.getConnection();

		String sql = "select seq_product_order_code.nextval from dual";
		ResultSet rs = null;
		PreparedStatement pstmt = null;

		int num = 0;

		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				num = rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				// 자원 반환
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return num;
	}

	@Override
	public void updateR_State(String m_id, int o_num) {
		// TODO Auto-generated method stub
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;

		String sql = "update product_order set r_state=1 where m_id=? and num=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m_id);
			pstmt.setInt(2, o_num);
			System.out.println("o_num은" + o_num + "m_id는" + m_id);
			System.out.println("r_state변경 dao실행 완료");

			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	@Override
	public ArrayList<ProductOrderVO> selectRecentOrder(String m_id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		ArrayList<ProductOrderVO> recentlist = new ArrayList<ProductOrderVO>();

		String sql = "select code_num, max(o_date), sum(total_price), max(d_state), max(p_num), count(*) from product_order where m_id=? and o_state=1 and rownum<=5 group by code_num order by max(o_date) desc";

		try {
			conn = db.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m_id);

			rs = pstmt.executeQuery();
			while (rs.next()) {
				recentlist.add(new ProductOrderVO(rs.getString(1), rs.getDate(2), rs.getInt(3), rs.getInt(4),
						rs.getInt(5), rs.getInt(6)));
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return recentlist;
	}

	@Override
	public void updatePoint(String m_id, int o_num) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;

		String sql = "update Member \r\n"
				+ "set point=(select point from member where id=?)+ (select total_price from product_order where num=? and m_id=?)*0.02\r\n"
				+ "where id=?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m_id);
			pstmt.setInt(2, o_num);
			pstmt.setString(3, m_id);
			pstmt.setString(4, m_id);

			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

	}

	@Override
	public int selectProductInCartNum(String m_id, int p_num, String size) {
		Connection conn = db.getConnection();
		ResultSet rs = null;
		PreparedStatement pstmt = null;

		String sql = "select num from product_order where m_id=? and p_num=? and p_size=? and o_state=0";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m_id);
			pstmt.setInt(2, p_num);
			pstmt.setString(3, size);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				// 자원 반환
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return -1;

	}

	@Override
	public int selectProductQuantity(int p_num, String psize) {
		Connection conn = db.getConnection();
		ResultSet rs = null;
		PreparedStatement pstmt = null;

		String sql = "select quantity from product_size where p_num=? and psize=?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, p_num);
			pstmt.setString(2, psize);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				// 자원 반환
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return -1;
	}

	@Override
	public ArrayList<ProductOrderVO> selectAllByCNum(String m_id, String code_num) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		ArrayList<ProductOrderVO> list = new ArrayList<ProductOrderVO>();

		String sql = "select * from PRODUCT_ORDER where m_id=? and code_num=? order by o_date desc";

		try {
			conn = db.getConnection();

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, m_id);
			pstmt.setString(2, code_num);

			rs = pstmt.executeQuery();
			while (rs.next()) {
				list.add(new ProductOrderVO(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4), rs.getString(5),
						rs.getDate(6), rs.getInt(7), rs.getInt(8), rs.getString(9), rs.getInt(10), rs.getString(11)));

			}

			System.out.println(m_id);
			System.out.println(code_num);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return list;
	}

	@Override
	public ArrayList<ProductOrderVO> selectAllsimpleorderlist(String m_id, int o_state, int page) {
		// 주문조회 페이지 method
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		int startRange = (page - 1) * 4 + 1;
		int endRange = page * 4;

		ArrayList<ProductOrderVO> list = new ArrayList<ProductOrderVO>();

		String sql = "select * from (select rownum as rnum, a.* from (select code_num, max(o_date), sum(total_price), max(d_state), max(p_num), count(*) from product_order where m_id=? and o_state=? group by code_num order by max(o_date) desc) A where rownum<=?) X where x.rnum>=?";

		try {
			conn = db.getConnection();

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, m_id);
			pstmt.setInt(2, o_state);
			pstmt.setInt(3, endRange);
			pstmt.setInt(4, startRange);

			rs = pstmt.executeQuery();
			while (rs.next()) {
				list.add(new ProductOrderVO(rs.getString(2), rs.getDate(3), rs.getInt(4), rs.getInt(5), rs.getInt(6),
						rs.getInt(7)));

			}

			System.out.println(m_id);
			System.out.println(o_state);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return list;
	}

	@Override
	public int countAllByCNum(String m_id, int o_state) {
		Connection conn = db.getConnection();

		String sql = "select count(*) from (select code_num from product_order where m_id='" + m_id + "' and o_state="
				+ o_state + " group by code_num)";
		Statement stmt = null;
		ResultSet rs = null;

		int num = 0;

		try {
			stmt = conn.createStatement();

			rs = stmt.executeQuery(sql);
			if (rs.next()) {
				num = rs.getInt(1);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				stmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return num;
	}

	@Override
	public int selectCartListCountById(String m_id) {
		Connection conn = db.getConnection();

		String sql = "select count(*) from product_order where m_id=? and o_state=0";
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		int num = 0;

		try {
			conn = db.getConnection();

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, m_id);

			rs = pstmt.executeQuery();

			while (rs.next()) {
				num = rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return num;
	}

	@Override
	public void insert(OrderInfoVO oivo) {
		Connection conn = db.getConnection();

		String sql = "insert into orderInfo values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, sysdate, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

		PreparedStatement pstmt = null;

		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, oivo.getNum());
			pstmt.setString(2, oivo.getOi_id());
			pstmt.setString(3, oivo.getOi_name());
			pstmt.setString(4, oivo.getOi_phone());
			pstmt.setString(5, oivo.getOi_email());
			pstmt.setString(6, oivo.getAdd_addr_full());
			pstmt.setString(7, oivo.getOi_addr_zipno());
			pstmt.setString(8, oivo.getOi_addr_roadAddrPart1());
			pstmt.setString(9, oivo.getOi_addr_roadAddrPart2());
			pstmt.setString(10, oivo.getOi_addr_addrDetail());
			pstmt.setString(11, oivo.getDeliMessage());
			pstmt.setString(12, oivo.getHowPay());
			pstmt.setInt(13, oivo.getOi_userPoint());
			pstmt.setInt(14, oivo.getOi_originTotalPrice());
			pstmt.setInt(15, oivo.getOi_totalPrice());
			pstmt.setString(16, oivo.getOi_code_num());
			pstmt.setString(17, oivo.getAdd_name());
			pstmt.setString(18, oivo.getAdd_phone1());
			pstmt.setString(19, oivo.getAdd_phone2());
			pstmt.setNString(20, oivo.getAdd_email());
			pstmt.setString(21, oivo.getAdd_addr_full());
			pstmt.setString(22, oivo.getAdd_addr_zipNo());
			pstmt.setString(23, oivo.getAdd_addr_roadAddrPart1());
			pstmt.setString(24, oivo.getAdd_addr_roadAddrPart2());
			pstmt.setString(25, oivo.getAdd_addr_addrDetail());

			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				// 자원 반환
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	@Override
	public int selectOrderInfoNum() {
		Connection conn = db.getConnection();

		String sql = "select seq_orderInfo.nextval from dual";
		ResultSet rs = null;
		PreparedStatement pstmt = null;

		int num = 0;

		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				num = rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				// 자원 반환
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return num;

	}

	@Override
	public void updateCode_num(ProductOrderVO po) {
		
		Connection conn = null;

		String sql = "update product_order set code_num=?, o_state=? where num=?";

		PreparedStatement pstmt = null;
		try {

			conn = db.getConnection();

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, po.getCode_num());
			pstmt.setInt(2, po.getO_state());
			pstmt.setInt(3, po.getNum());

			pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

	}

	@Override
	public OrderInfoVO selectOrderInfo(String code_num) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		OrderInfoVO oi = null;

		String sql = "select * from orderinfo where code_num=?";
		try {
			conn = db.getConnection();

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, code_num);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				oi = new OrderInfoVO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11),rs.getString(12),rs.getInt(13),rs.getInt(14),rs.getInt(15),rs.getDate(16),rs.getString(17),rs.getString(18),
						rs.getString(19),rs.getString(20),rs.getString(21),rs.getString(22),rs.getString(23),rs.getString(24),rs.getString(25),rs.getString(26));
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return oi;
	}

}
