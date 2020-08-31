package productorder.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import conn.DBConnect;
import model.ProductOrderVO;

public class DaoImpl implements Dao{
	private DBConnect db;

	public DaoImpl() {
		db = DBConnect.getInstance();
	}
	@Override
	public void insert(ProductOrderVO o) {
//		Connection conn = null;
//		
//		String sql = "insert into PRODUCT_ORDER values(seq_PRODUCT_order.nextval,?,?,?,?,sysdate,?,0)";
//		
//		PreparedStatement pstmt= null;
//		
//		try {
//			conn = db.getConnection();
//			
//			pstmt=conn.prepareStatement(sql);
//			
//			pstmt.setInt(1, o.getPro_num());
//			pstmt.setInt(2, o.getOrder_num());
//			pstmt.setInt(3, o.getTotal_price());
//			pstmt.setString(4, o.getO_id());
//			pstmt.setInt(5, o.getO_state());
//			
//			pstmt.executeUpdate();
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			try {
//				pstmt.close();
//				conn.close();
//			} catch (Exception e2) {
//				e2.printStackTrace();
//			}
//		}
	}

	@Override
	public ProductOrderVO select(int num) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ProductOrderVO o = null;
		
		String sql = "select * from PRODUCT_ORDER where num=?"
				+ "?";
		try {
			conn = db.getConnection();
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				return new ProductOrderVO(rs.getInt(1), rs.getInt(2),rs.getInt(3), rs.getInt(4), rs.getString(5),
						rs.getDate(6), rs.getInt(7),rs.getInt(8),rs.getString(9));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
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
		// 二쇰Ц議고쉶
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		ArrayList<ProductOrderVO> list = new ArrayList<ProductOrderVO>();
		
		String sql = "select * from PRODUCT_ORDER where m_id=? and o_state=?";
		
		
		try {
			conn = db.getConnection();
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, m_id);
			pstmt.setInt(2, o_state);
			
			
			rs=pstmt.executeQuery();
			while(rs.next()) {
				list.add(new ProductOrderVO(rs.getInt(1), rs.getInt(2),rs.getInt(3), rs.getInt(4), rs.getString(5),
						rs.getDate(6), rs.getInt(7),rs.getInt(8),rs.getString(9)));
				
			}

			System.out.println(m_id);
			System.out.println(o_state);
			
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

}
