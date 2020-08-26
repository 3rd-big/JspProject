package notice.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import conn.DBConnect;
import model.NoticeVO;

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

		String sql = "insert into notice values(seq_notice.nextval, ?, ?, sysdate, 0 )";

		PreparedStatement pstmt = null;

		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, notice.getTitle());
			pstmt.setString(2, notice.getContent());

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
	public NoticeVO select(int num) {
		// TODO Auto-generated method stub
		ResultSet rs = null;
		NoticeVO notice = null;
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		String sql = "select * from notice where num=? order by num";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			if(rs.next()) {
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
				Connection conn = db.getConnection();
				String sql = "delete notice where num=?";
				
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
	public ArrayList<NoticeVO> selectAll() {
		// TODO Auto-generated method stub
		ArrayList<NoticeVO> notice = new ArrayList<>();
		ResultSet rs = null;
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		String sql = "select * from notice order by num desc";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				notice.add(new NoticeVO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDate(4), rs.getInt(5)));
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

}
