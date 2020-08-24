package member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;



import conn.DBConnect;
import model.MemberVO;

public class DaoImpl implements Dao {
	private DBConnect db;
	 
	public DaoImpl() {
		db = DBConnect.getInstance();
	}
	
	@Override
	public void insert(MemberVO m) {
		Connection conn = null;
		
		String sql = "insert into MEMBER values(?, ?, ?, ?, ?, 1, 0)";
		
		PreparedStatement pstmt = null;
		try {
			
			conn = db.getConnection();
			
			pstmt = conn.prepareStatement(sql);
		
			pstmt.setString(1, m.getId());
			pstmt.setString(2, m.getPwd());
			pstmt.setString(3, m.getName());
			pstmt.setString(4, m.getEmail());
			pstmt.setString(5, m.getAddr());
			
			
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
	public MemberVO select(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(MemberVO m) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub
		
	}

}
