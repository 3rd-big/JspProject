package review.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import conn.DBConnect;
import model.ReviewVO;

public class DaoImpl implements Dao{
	private DBConnect db;

	public DaoImpl() {
		db = DBConnect.getInstance();
	}
	
	@Override
	public int selectNum() {
		Connection conn = db.getConnection();

		String sql = "select seq_review.nextval from dual";
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
	public void insert(ReviewVO review) {
		Connection conn = db.getConnection();

		String sql = "insert into review values(seq_review.nextval, ?, ?, ?, ?, ?, sysdate)";

		PreparedStatement pstmt = null;
		System.out.println("리뷰insertdao실행");
		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, review.getM_id());
			pstmt.setInt(2, review.getP_num());
			pstmt.setInt(3, review.getRate());
			pstmt.setString(4, review.getContent());
			pstmt.setString(5, review.getImg());

			pstmt.executeUpdate();
			System.out.println(sql);
			//

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
	public ReviewVO select(int num) {
		ResultSet rs = null;
		ReviewVO review = null;
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		String sql = "select * from review where num=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				review = (new ReviewVO(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getString(5), rs.getString(6),
						rs.getDate(7)));
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
		
		return review;
	}
	
	@Override
	public ArrayList<ReviewVO> selectByP_Num(int p_num) {
		ResultSet rs = null;
		ArrayList<ReviewVO> review = new ArrayList<>();
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		String sql = "select * from review where p_num=? order by num";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, p_num);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				review.add(new ReviewVO(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getString(5), rs.getString(6), rs.getDate(7)));
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
		
		return review;
	}
	

	@Override
	public ArrayList<ReviewVO> selectReviewInProductByPageNum(int p_num, int page) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		int startRange = (page - 1) * 3 + 1;
		int endRange = page * 3;
		
		ArrayList<ReviewVO> reviews = new ArrayList<ReviewVO>();
		
		String sql = "select * from (select rownum as rnum, a.* from (select * from review where p_num=? order by r_date desc) A where ROWNUM <= ?) X where x.rnum >= ?";
		
		try {
			conn = db.getConnection();
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, p_num);
			pstmt.setInt(2, endRange);
			pstmt.setInt(3, startRange);
			
			rs=pstmt.executeQuery();
			while(rs.next()) {
				reviews.add(new ReviewVO(rs.getInt(2), rs.getString(3), rs.getInt(4), rs.getInt(5), rs.getString(6), rs.getString(7), rs.getDate(8)));
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

		return reviews;
	}
	

	@Override
	public void update(ReviewVO review) {
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;

		String sql = "update review set rate=?, content=?, img=?, r_date=sysdate where num=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, review.getRate());
			pstmt.setString(2, review.getContent());
			pstmt.setString(3, review.getImg());
			pstmt.setInt(4, review.getNum());
			pstmt.executeUpdate();
			
			System.out.println("리뷰update dao실행");
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	@Override
	public void delete(int num) {
		Connection conn = db.getConnection();
		String sql = "delete review where num=?";
		
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {//자원반환
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	@Override
	public ArrayList<ReviewVO> selectAll() {
		ArrayList<ReviewVO> review = new ArrayList<>();
		ResultSet rs = null;
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		String sql = "select * from review order by num desc";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				review.add(new ReviewVO(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getString(5), rs.getString(6),
						rs.getDate(7)));
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
		return review;
	}

	@Override
	public ArrayList<ReviewVO> myselectAll(String m_id, int page) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		int startRange = (page - 1) * 4 + 1;
		int endRange = page * 4;
		
		ArrayList<ReviewVO> list = new ArrayList<ReviewVO>();
		
		String sql = "select * from (select rownum as rnum, a.* from (select * from review where m_id=? order by num desc) A where rownum<=?) X where x.rnum>=?";
		
		
		try {
			conn = db.getConnection();
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, m_id);
			pstmt.setInt(2, endRange);
			pstmt.setInt(3, startRange);
			
			rs=pstmt.executeQuery();
			while(rs.next()) {
				list.add(new ReviewVO(rs.getInt(2), rs.getString(3), rs.getInt(4), rs.getInt(5), rs.getString(6), rs.getString(7),
						rs.getDate(8)));
			}

			System.out.println(m_id);
			
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
	public int selectP_Num(int r_num) {
		Connection conn = db.getConnection();

		String sql = "select p_num from review where num="+r_num;
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		int p_num=0;
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				p_num = rs.getInt(1);
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
		return p_num;
	}

	@Override
	public int countallmine(String m_id) {
		Connection conn = db.getConnection();

		String sql = "select count(*) from review where m_id='"+m_id+"'";
		Statement stmt = null;
		ResultSet rs = null;
		
		int num = 0;

		try {
			stmt = conn.createStatement();
			
			rs = stmt.executeQuery(sql);
			if (rs.next()) {
				num = rs.getInt(1);
				System.out.println("count="+num);
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
	public int countreviewByP_Num(int p_num) {
		// TODO Auto-generated method stub
		return 0;
	}



	
	

}
