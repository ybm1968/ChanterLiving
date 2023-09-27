package mini.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import mini.dto.Reserve;

public class ReserveRepository extends JDBConnection {
	
	/**
	 * 예약정보 조회
	 * @param reserve_num
	 * @return
	 */
	public Reserve getReserve(String reserve_num) {
		Reserve reserve= new Reserve();
		
		String sql = " SELECT * FROM reserve WHERE id = ? ";
		
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, reserve_num);
			rs = psmt.executeQuery();
			
			if( rs.next() ) {
				reserve.setReserve_num( rs.getString("reserve_num") );
				reserve.setId( rs.getString("id") );
				reserve.setProduct_id( rs.getString("prodcut_id") );
				reserve.setDate( rs.getString("date") );
				reserve.setProduct_address( rs.getString("product_address") );
				reserve.setSize( rs.getInt("size") );
				reserve.setName (rs.getString("name") );
				reserve.setPhone( rs.getInt("phone"));
			}
		} catch (SQLException e) {
			System.err.println("예약정보 조회 시, 에러 발생");
			e.printStackTrace();
		}
		return reserve;
	}
	
	/**
	 * 예약등록
	 * @param reserve
	 * @return
	 */
	public int insert(Reserve reserve) {
		int result = 0;
		
		// size 입력 값이 없을 경우
		if (reserve.getSize() == 0 ) {
			String sql = " INSERT INTO reserve (reserve_num, id, product_id , date, product_address, name, phone )"				
					   + " VALUES( ?, ?, ?, ?, ?, ?, ? ) ";
			
			int no = 1;
			try {
				psmt = con.prepareStatement(sql);
				psmt.setString(no++, reserve.getReserve_num());
				psmt.setString(no++, reserve.getId());
				psmt.setString(no++, reserve.getProduct_id());
				psmt.setString(no++, reserve.getDate());
				psmt.setString(no++, reserve.getProduct_address());
				psmt.setString(no++, reserve.getName());
				psmt.setInt(no++, reserve.getPhone());
				
				result = psmt.executeUpdate();			// 예약 등록 요청
				
			} catch (SQLException e) {
				System.err.println("예약 등록 중, 에러 발생!");
				e.printStackTrace();
			}
			System.out.println("예약 " + result + "개가 등록되었습니다.");
		}
		// size 입력 값이 있을 경우
		else {
			String sql = " INSERT INTO reserve (reserve_num, id, product_id , date, product_address, size, name, phone )"				
					   + " VALUES( ?, ?, ?, ?, ?, ?, ?, ? ) ";
			
			int no = 1;
			try {
				psmt = con.prepareStatement(sql);
				psmt.setString(no++, reserve.getReserve_num());
				psmt.setString(no++, reserve.getId());
				psmt.setString(no++, reserve.getProduct_id());
				psmt.setString(no++, reserve.getDate());
				psmt.setString(no++, reserve.getProduct_address());
				psmt.setInt(no++, reserve.getSize());
				psmt.setString(no++, reserve.getName());
				psmt.setInt(no++, reserve.getPhone());
				
				result = psmt.executeUpdate();			// 예약 등록 요청
				
			} catch (SQLException e) {
				System.err.println("예약 등록 중, 에러 발생!");
				e.printStackTrace();
			}
			System.out.println("예약 " + result + "개가 등록되었습니다.");
		}
		return result;
	}

	public List<Reserve> list() {
		
		ArrayList<Reserve> reserveList = new ArrayList<Reserve>();
		
		String sql = " SELECT * FROM reserve ORDER BY date";
		
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			
			while( rs.next() ) {
				Reserve reserve = new Reserve();
				
				reserve.setReserve_num( rs.getString("reserve_num") );
				reserve.setId( rs.getString("id") );
				reserve.setProduct_id( rs.getString("product_id") );
				reserve.setDate( rs.getString("date") );
				reserve.setProduct_address( rs.getString("product_address") );
				reserve.setSize( rs.getInt("size") );
				reserve.setName (rs.getString("name") );
				reserve.setPhone( rs.getInt("phone"));
				
				reserveList.add(reserve);
			}
			
		} catch (SQLException e) {
			System.err.println("예약 목록 조회 시, 에러 발생");
			e.printStackTrace();
		}
		return reserveList; 
	}

	
	// ----------------------- 필요없는 기능 ------------------------
	/**
	 * 수정
	 * @param user
	 * @return
	 */
	public int update(Reserve reserve) {
		
		int result = 0;
		String sql = " UPDATE reserve  "
				   + "    SET date = ? "
				   + "		 ,product_address = ? "
				   + "		 ,size = ? "
				   + " WHERE reserve_num = ? ";
		
		int no = 1;
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(no++, reserve.getDate());
			psmt.setString(no++, reserve.getProduct_address());
			psmt.setInt(no++, reserve.getSize());
			
			result = psmt.executeUpdate();			// 예약 수정 요청
			
		} catch (SQLException e) {
			System.err.println("예약정보 수정 중, 에러 발생!");
			e.printStackTrace();
		}
		System.out.println("예약 정보가 수정되었습니다.");
		return result;
	}
	
	/**
	 * 삭제
	 * @param user
	 * @return
	 */
	public int delete(String reserve_num) {
		int result = 0;
		String sql = " DELETE FROM reserve "				
				   + " WHERE reserve_num = ? ";
		
		int no = 1;
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(no++, reserve_num);
			result = psmt.executeUpdate();			// 예약 삭제 요청
			
		} catch (SQLException e) {
			System.err.println("예약 삭제 중, 에러 발생!");
			e.printStackTrace();
		}
		return result;
	}
}
