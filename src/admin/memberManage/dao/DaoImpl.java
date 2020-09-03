package admin.memberManage.dao;

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
	public void update(MemberVO m) {
		Connection conn = null;

		String sql = "update MEMBER set pwd=?, email=?, addr=?z where id=?";

		PreparedStatement pstmt = null;
		try {

			conn = db.getConnection();

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, m.getPwd());
			pstmt.setString(2, m.getEmail());
			pstmt.setString(3, m.getAddr());
			pstmt.setString(4, m.getId());

			System.out.println(m.getPwd());
			System.out.println(m.getEmail());
			System.out.println(m.getAddr());
			System.out.println(m.getId());

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
	public void delete(String id) {
		Connection conn = null;

		String sql = "delete MEMBER where id=?";

		PreparedStatement pstmt = null;
		try {

			conn = db.getConnection();

			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);

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

}
