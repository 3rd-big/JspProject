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
	public void insert(ProductOrderVO po) {
		Connection conn = db.getConnection();
		
		String sql = "insert into product_order values(?, ?, ?, ?, ?, sysdate, ?, ?, ?, ?)";
		
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
			pstmt.setInt(9,po.getR_state());		//r_state 추가 // 선정 수정

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
			
			if(rs.next()) {
				return new ProductOrderVO(rs.getInt(1), rs.getInt(2),rs.getInt(3), rs.getInt(4), rs.getString(5),
						rs.getDate(6), rs.getInt(7),rs.getInt(8),rs.getString(9),rs.getInt(10));
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
						rs.getDate(6), rs.getInt(7),rs.getInt(8),rs.getString(9),rs.getInt(10)));
				
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

}
