package notice.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import conn.DBConnect;
import model.NoticeVO;
import model.ProductVO;

public class DaoImpl implements Dao {
	private DBConnect db;

	public DaoImpl() {
		db = DBConnect.getInstance();
	}

	@Override
	public int selectNum() {
		// TODO Auto-generated method stub
		Connection conn = db.getConnection();

		String sql = "select seq_notice.nextval from dual";
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
	public void insert(NoticeVO notice) {
		// TODO Auto-generated method stub
		Connection conn = db.getConnection();

		String sql = "insert into notice values(seq_notice.nextval, ?, ?, sysdate, ? )";

		PreparedStatement pstmt = null;

		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, notice.getTitle());
			pstmt.setString(2, notice.getContent());
			pstmt.setInt(3, notice.getView_count());
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
		System.out.println("=====insert======");
		System.out.println(notice.toString());
	}

	@Override
	public NoticeVO select(int num) {
		// TODO Auto-generated method stub
		ResultSet rs = null;
		NoticeVO notice = new NoticeVO();
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		String sql1 = "select * from notice where num=? order by num";

		try {
			pstmt = conn.prepareStatement(sql1);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				notice = (new NoticeVO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDate(4), rs.getInt(5)));
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

		return notice;
	}

	@Override
	public void update(NoticeVO notice) {
		// TODO Auto-generated method stub
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;

		String sql = "update notice set title=?, content=?, n_date=sysdate where num=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, notice.getTitle());
			pstmt.setString(2, notice.getContent());
			pstmt.setInt(3, notice.getNum());
			pstmt.executeUpdate();

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
		Connection conn = null;

		String sql = "delete notice where num=?";

		PreparedStatement pstmt = null;
		try {
			conn = db.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.executeUpdate();
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
	public ArrayList<NoticeVO> selectAll() {
		// TODO Auto-generated method stub

		ArrayList<NoticeVO> notice = new ArrayList<>();
		ResultSet rs = null;
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;

		String sql = "select * from notice order by num desc";
		//String sql = "select * from notice where num=82";
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				notice.add(new NoticeVO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDate(4), rs.getInt(5)));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return notice;
	}

	@Override
	public void updateViewCount(NoticeVO notice) {
		// TODO Auto-generated method stub

		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;

		String sql = "update notice set view_count = view_count+1 where num=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, notice.getNum());
			pstmt.executeUpdate();

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
	public ArrayList<NoticeVO> selectNoticeByPageNum(int page) {
		ArrayList<NoticeVO> notice = new ArrayList<>();
		Connection conn = db.getConnection();
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		
		int startRange = (page - 1) * 8 + 1;
		int endRange = page * 8;
		
		String sql = "select * from (select rownum as rnum, a.* from (select * from notice order by num desc) A where rownum <= ?) X where x.rnum >= ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, endRange);
			pstmt.setInt(2, startRange);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				notice.add(new NoticeVO(rs.getInt(2), rs.getString(3), rs.getString(4), rs.getDate(5), rs.getInt(6)));
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
		return notice;
	}

	@Override
	public int countallmine() {
		Connection conn = db.getConnection();

		String sql = "select count(*) from notice";
		Statement stmt = null;
		ResultSet rs = null;
		int num = 0;
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				num =rs.getInt(1);
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
	public ArrayList<NoticeVO> selectNoticeheader() {
		// TODO Auto-generated method stub
		ArrayList<NoticeVO> notice = new ArrayList<>();
		ResultSet rs = null;
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;

//		String sql = "select * from (select * from notice order by n_date desc) where rownum <= 3 and order by num desc";
		String sql = "select * from (select * from notice order by n_date desc) where rownum <= 3 order by num desc";
//		String sql = "select * from (select * from notice order by num desc) where rownum <= 3 order by num desc";
		//String sql = "select * from notice where num=82";
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				notice.add(new NoticeVO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDate(4), rs.getInt(5)));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return notice;
	}
}