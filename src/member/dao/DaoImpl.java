package member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import conn.DBConnect;
import model.MemberVO;
import model.ReviewVO;

public class DaoImpl implements Dao {
	private DBConnect db;
	 
	public DaoImpl() {
		db = DBConnect.getInstance();
	}
	
	@Override
	public void insert(MemberVO m) {
		Connection conn = null;
		
		String sql = "insert into MEMBER values(?, ?, ?, ?, ?, 1, 2000)";
		
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
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		MemberVO m = null;
		
		String sql = "select * from MEMBER where id=?";
		
		try {
			
			conn = db.getConnection();
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return new MemberVO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getInt(6), rs.getInt(7));
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
		
		return null;
	}

	@Override
	public void update(MemberVO m) {
		Connection conn = null;
		
		String sql = "update MEMBER set pwd=?, email=?, addr=? where id=?";
		
		PreparedStatement pstmt = null;
		try {
			
			conn = db.getConnection();

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1,  m.getPwd());
			pstmt.setString(2,  m.getEmail());
			pstmt.setString(3, 	m.getAddr());
			pstmt.setString(4,  m.getId());
			
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

	@Override
	public ArrayList<MemberVO> selectAllMember() {
		// TODO Auto-generated method stub
		
		Connection conn = db.getConnection();
		ArrayList<MemberVO> members = new ArrayList();
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		
		String sql = "select * from member";
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				members.add(new MemberVO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getInt(6), rs.getInt(7)));
			}
			
			System.out.println("All member 불러오기 완료");
			
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
		
		
		
		return members;
	}

	@Override
	public ArrayList<MemberVO> selectMemberByReviewId(ArrayList<ReviewVO> r) {
		Connection conn = db.getConnection();
		ArrayList<MemberVO> members = new ArrayList();
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		
		String sql = "select * from member where id=?";
		
		try {
			conn = db.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			for (ReviewVO reviewVO : r) {
				pstmt.setString(1, reviewVO.getM_id());
				rs = pstmt.executeQuery();
				
				while (rs.next()) {
					members.add(new MemberVO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getInt(6), rs.getInt(7)));
				}
			}
			

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

		return members;
	}

	@Override
	public MemberVO selectId(String email) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		MemberVO m = null;
		
		String sql = "select * from MEMBER where email=?";
		
		try {
			
			conn = db.getConnection();
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return new MemberVO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getInt(6), rs.getInt(7));
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
		
		return null;
	}

}
