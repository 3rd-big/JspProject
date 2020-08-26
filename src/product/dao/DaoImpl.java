package product.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import conn.DBConnect;
import model.ProductVO;

public class DaoImpl implements Dao {

private DBConnect db;
	
	public DaoImpl() {
		db = DBConnect.getInstance();
	}
	
	@Override
	public ArrayList<ProductVO> selectAll() {
		ArrayList<ProductVO> products = new ArrayList<>();
		ResultSet rs = null;
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		String sql = "select * from product";
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				products.add(new ProductVO(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5), rs.getDate(6), rs.getInt(7)));
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

		return products;
	}

	@Override
	public ArrayList<ProductVO> selectBestProducts() {
		ArrayList<ProductVO> bestProducts = new ArrayList<>();
		ResultSet rs = null;
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		String sql = "select * from (select * from product order by record desc) where rownum <= 4";
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				bestProducts.add(new ProductVO(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5), rs.getDate(6), rs.getInt(7)));
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

		return bestProducts;
	}

	@Override
	public ArrayList<ProductVO> selectNewProducts() {
		ArrayList<ProductVO> newProducts = new ArrayList<>();
		ResultSet rs = null;
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		String sql = "select * from (select * from product order by e_date desc) where rownum <= 4";
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				newProducts.add(new ProductVO(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5), rs.getDate(6), rs.getInt(7)));
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

		return newProducts;
	}
	
	
	

	@Override
	public int selectNum() {
		Connection conn = db.getConnection();

		String sql = "select seq_shop_product.nextval from dual";
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
	public void insert(ProductVO p) {
		Connection conn = db.getConnection();
		
		String sql = "insert into product values(?, ?, ?, ?, ?, sysdate, 0)";
		
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, p.getNum());
			pstmt.setString(2, p.getName());
			pstmt.setInt(3, p.getPrice());
			pstmt.setString(4, p.getImg());
			pstmt.setString(5, p.getContent());

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
	public ProductVO select(int num) {
		Connection conn = db.getConnection();
		ResultSet rs = null;
		ProductVO product = null;
		PreparedStatement pstmt = null;
		
		
		// TODO 해당 쿼리문은 나중에 상품관련 테이블 모두 조인한 결과값으로 수정 필요
		String sql = "select * from product where num=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				product = (new ProductVO(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5), rs.getDate(6), rs.getInt(7)));
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

		return product;
	}


	
}