package product.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import conn.DBConnect;
import model.ProductImageVO;
import model.ProductSizeVO;
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
				products.add(new ProductVO(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5), rs.getDate(6), rs.getInt(7), rs.getString(8)));
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
	public ArrayList<ProductVO> selectBestProducts(int numberItems) {
		ArrayList<ProductVO> bestProducts = new ArrayList<>();
		ResultSet rs = null;
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		String sql = "select * from (select * from product order by record desc) where rownum <= ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, numberItems);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				bestProducts.add(new ProductVO(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5), rs.getDate(6), rs.getInt(7), rs.getString(8)));
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
	public ArrayList<ProductVO> selectNewProducts(int numberItems) {
		ArrayList<ProductVO> newProducts = new ArrayList<>();
		ResultSet rs = null;
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		String sql = "select * from (select * from product order by e_date desc) where rownum <= ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, numberItems);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				newProducts.add(new ProductVO(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5), rs.getDate(6), rs.getInt(7), rs.getString(8)));
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
	public ArrayList<ProductVO> selectCategoryProducts(String category) {
		ArrayList<ProductVO> products = new ArrayList<>();
		Connection conn = db.getConnection();
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		
		String sql = "select * from product where category=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, category);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				products.add(new ProductVO(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5), rs.getDate(6), rs.getInt(7), rs.getString(8)));
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
	public ArrayList<ProductVO> selectCategoryProductsByPageNum(String category, int page) {
		ArrayList<ProductVO> products = new ArrayList<>();
		Connection conn = db.getConnection();
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		
		int startRange = (page - 1) * 8 + 1;
		int endRange = page * 8;
		
		String sql = "select * from (select rownum as rnum, a.* from (select * from product where category=? order by record desc) A where rownum <= ?) X where x.rnum >= ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, category);
			pstmt.setInt(2, endRange);
			pstmt.setInt(3, startRange);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				products.add(new ProductVO(rs.getInt(2), rs.getString(3), rs.getInt(4), rs.getString(5), rs.getString(6), rs.getDate(7), rs.getInt(8), rs.getString(9)));
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
	public ArrayList<ProductVO> selectCategoryProductsSort(String category, int page, String orderBy) {
		ArrayList<ProductVO> products = new ArrayList<>();
		Connection conn = db.getConnection();
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		
		int startRange = (page - 1) * 8 + 1;
		int endRange = page * 8;
		
		String sql = "select * from (select rownum as rnum, a.* from (select * from product where category=? order by " +orderBy + " desc) A where rownum <= ?) X where x.rnum >= ?";
		if(orderBy.equals("price")) {
			sql = "select * from (select rownum as rnum, a.* from (select * from product where category=? order by price) A where rownum <= ?) X where x.rnum >= ?";
		}else if(orderBy.equals("rate")) {
			sql = "select * from (select rownum as rnum, a.* from (select * from ratinginproduct where category=? order by rate desc) a where rownum <= ?) X where rnum >= ?";
		}

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, category);
			pstmt.setInt(2, endRange);
			pstmt.setInt(3, startRange);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				products.add(new ProductVO(rs.getInt(2), rs.getString(3), rs.getInt(4), rs.getString(5), rs.getString(6), rs.getDate(7), rs.getInt(8), rs.getString(9)));
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
	public ArrayList<ProductImageVO> selectDetailImages(int p_num) {
		Connection conn = db.getConnection();
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		
		ArrayList<ProductImageVO> detailImages = new ArrayList<>();
		
		String sql = "select * from product_image where p_num=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, p_num);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				detailImages.add(new ProductImageVO(rs.getInt(1), rs.getInt(2), rs.getString(3)));
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
		
		return detailImages;
	}

	@Override
	public int selectProductNum() {
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
	public int selectProductImgNum() {
		Connection conn = db.getConnection();

		String sql = "select seq_product_image.nextval from dual";
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
	public int selectProductSizeNum() {
		Connection conn = db.getConnection();
		
		String sql = "select seq_product_size.nextval from dual";
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
		
		String sql = "insert into product values(?, ?, ?, ?, ?, sysdate, 0, ?)";
		
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, p.getNum());
			pstmt.setString(2, p.getName());
			pstmt.setInt(3, p.getPrice());
			pstmt.setString(4, p.getImg());
			pstmt.setString(5, p.getContent());
			pstmt.setString(6, p.getCategory());

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
	public void insert(ProductImageVO pi) {
		Connection conn = db.getConnection();
		
		String sql = "insert into product_image values(?, ?, ?)";
		
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, pi.getNum());
			pstmt.setInt(2, pi.getP_num());
			pstmt.setString(3, pi.getImg());
			
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
	public void insert(ProductSizeVO ps) {
		Connection conn = db.getConnection();
		
		String sql = "insert into product_size values(?, ?, ?, ?)";
		
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, ps.getNum());
			pstmt.setInt(2, ps.getP_num());
			pstmt.setString(3, ps.getPsize());
			pstmt.setInt(4, ps.getQuantity());
			
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
				product = (new ProductVO(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getString(5), rs.getDate(6), rs.getInt(7), rs.getString(8)));
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

	@Override
	public int selectQuantity(int productNum, String size) {
		Connection conn = db.getConnection();
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		
		String sql = "select quantity from product_size where p_num=? and psize=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, productNum);
			pstmt.setString(2, size);
			rs = pstmt.executeQuery();
			if(rs.next()) {
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
	public void update(ProductSizeVO ps) {
		Connection conn = db.getConnection();
		
		String sql = "update product_size set quantity=? where p_num=? and psize=?";
		
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, ps.getQuantity());
			pstmt.setInt(2, ps.getP_num());
			pstmt.setString(3, ps.getPsize());
			
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
	public void delete(int num) {
		Connection conn = db.getConnection();
		
		String sql = "delete product where num=?";
		
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
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



}