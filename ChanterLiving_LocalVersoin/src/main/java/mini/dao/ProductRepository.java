package mini.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import mini.dto.Product;

public class ProductRepository extends JDBConnection {
	
	/**
	 * 상품 목록
	 * @return
	 */
	public List<Product> list() {
		
		ArrayList<Product> productList = new ArrayList<Product>();
		
		String sql = " SELECT * FROM product_2 ";
		
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			
			while( rs.next() ) {
				Product product = new Product();
				
				product.setProduct_id( rs.getString("product_id") );
				product.setProduct_name( rs.getString("product_name") );
				product.setImg( rs.getString("img") );
				product.setDescription( rs.getString("description") );
				
				productList.add(product);
			}
			
		} catch (SQLException e) {
			System.err.println("상품 목록 조회 시, 에러 발생");
			e.printStackTrace();
		}
		return productList; 
	}
	
	/**
	 * 상품 조회
	 * @param productId
	 * @return
	 */
	public Product getId(String product_id) {
		Product product = new Product();
		
		String sql = " SELECT * FROM product_2 WHERE product_id = ? ";
		
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, product_id);
			rs = psmt.executeQuery();
			
			if( rs.next() ) {
				product.setProduct_id( rs.getString("product_id") );
				product.setProduct_name( rs.getString("product_name") );
				product.setImg( rs.getString("img") );
				product.setDescription( rs.getString("description") );
			}
		} catch (SQLException e) {
			System.err.println("상품 조회 시, 에러 발생");
			e.printStackTrace();
		}
		return product;
	}
	
	
	/**
	 * 상품 등록
	 * @param product
	 * @return
	 */
	public int insert(Product product) {
		int result = 0;
		
		String sql = " INSERT INTO product_2 ( product_id, product_name, img, description) "				
				   + " VALUES( ?, ?, ?, ? ) ";
		
		int no = 1;
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(no++, product.getProduct_id());
			psmt.setString(no++, product.getProduct_name());
			psmt.setString(no++, product.getImg());
			psmt.setString(no++, product.getDescription());
			result = psmt.executeUpdate();			// 상품 등록 요청
			
		} catch (SQLException e) {
			System.err.println("상품 등록 중, 에러 발생!");
			e.printStackTrace();
		}
		System.out.println("상품 " + result + "개가 등록되었습니다.");
		return result;
	}
	
	/**
	 * 상품 수정
	 * @param product
	 * @return
	 */
	public int update(Product product) {
		
		int result = 0;
		
		String sql = " UPDATE product_2  "
				   + "    SET product_name = ? "
				   + "		 ,img = ? "
				   + "		 ,description = ? "
				   + " WHERE product_id = ? ";
		
		int no = 1;
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(no++, product.getProduct_name());
			psmt.setString(no++, product.getImg());
			psmt.setString(no++, product.getDescription());
			psmt.setString(no++, product.getProduct_id());
			result = psmt.executeUpdate();			// 상품 수정 요청
			
		} catch (SQLException e) {
			System.err.println("상품 수정 중, 에러 발생!");
			e.printStackTrace();
		}
		System.out.println("상품 " + result + "개가 수정되었습니다.");
		return result;
	}

	/**
	 * 상품 삭제
	 * @param product
	 * @return
	 */
	public int delete(String product_id) {
		int result = 0;

		String sql = " DELETE FROM product_2 "				
				   + " WHERE product_id = ? ";
		
		int no = 1;
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(no++, product_id);
			result = psmt.executeUpdate();			// 상품 삭제 요청
			
		} catch (SQLException e) {
			System.err.println("상품 삭제 중, 에러 발생!");
			e.printStackTrace();
		}
		System.out.println("상품 " + result + "개가 삭제되었습니다.");
		return result;
	}
	
	/**
	 * getProductById
	 * @param product
	 * @return
	 */
	public Product getProductById(String id) {
		Product product = new Product();
		
		String sql = " SELECT * FROM product_2 WHERE product_id = ? ";
		
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, id);
			rs = psmt.executeQuery();
			
			if( rs.next() ) {
				product.setProduct_id( rs.getString("product_id") );
				product.setProduct_name( rs.getString("product_name") );
				product.setImg( rs.getString("img") );
				product.setDescription( rs.getString("description") );
			}
		} catch (SQLException e) {
			System.err.println("상품 조회 시, 에러 발생");
			e.printStackTrace();
		}
		return product;
		

	}

	/**
	 * 상품 top목록
	 * @return
	 */
	public List<Product> toplist() {
		
		ArrayList<Product> productList = new ArrayList<Product>();
		
		String sql = " SELECT * FROM product_2 ORDER BY product_id DESC";
		
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			
			while( rs.next() ) {
				Product product = new Product();
				
				product.setProduct_id( rs.getString("product_id") );
				product.setProduct_name( rs.getString("product_name") );
				product.setImg( rs.getString("img") );
				product.setDescription( rs.getString("description") );
				
				productList.add(product);
			}
			
		} catch (SQLException e) {
			System.err.println("상품 목록 조회 시, 에러 발생");
			e.printStackTrace();
		}
		return productList; 
	}
	/**
	 * search
	 * @return
	 */
	public List<Product> searchList(String search) {
		
		ArrayList<Product> productList = new ArrayList<Product>();
		
		String sql = " SELECT * FROM product_2 WHERE description LIKE '%"+search+"%' OR product_name LIKE '%"+search+"%' ";
		
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			
			while( rs.next() ) {
				Product product = new Product();
				
				product.setProduct_id( rs.getString("product_id") );
				product.setProduct_name( rs.getString("product_name") );
				product.setImg( rs.getString("img") );
				product.setDescription( rs.getString("description") );
				
				productList.add(product);
			}
			
		} catch (SQLException e) {
			System.err.println("상품 목록 조회 시, 에러 발생");
			e.printStackTrace();
		}
		return productList; 
	}
}



