package mini.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import mini.dto.Product;
import mini.dto.User;

public class UserRepository extends JDBConnection {
	
	public User getuserId(String id) {
		User user= new User();
		
		String sql = " SELECT * FROM user_2 WHERE id = ? ";
		
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, id);
			rs = psmt.executeQuery();
			
			if( rs.next() ) {
				user.setId( rs.getString("id") );
				user.setPassword( rs.getString("password") );
				user.setName( rs.getString("name") );
				user.setAddress( rs.getString("address") );
				user.setPhone( rs.getInt("phone") );
			}
		} catch (SQLException e) {
			System.err.println("상품 조회 시, 에러 발생");
			e.printStackTrace();
		}
		return user;
	}
	
	public int insert(User user) {
		int result = 0;
		
		String sql = " INSERT INTO user_2(id, password, name, address , phone )"				
				   + " VALUES( ?, ?, ?, ?, ? ) ";
		
		int no = 1;
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(no++, user.getId());
			psmt.setString(no++, user.getPassword());
			psmt.setString(no++, user.getName());
			psmt.setString(no++, user.getAddress());
			psmt.setInt(no++, user.getPhone());
			
			result = psmt.executeUpdate();			// 상품 등록 요청
			
		} catch (SQLException e) {
			System.err.println("회원 등록 중, 에러 발생!");
			e.printStackTrace();
		}
		System.out.println("회원 데이터 " + result + "개가 등록되었습니다.");
		return result;
	}
	
	public User login(String id, String pw) {
		String sql = " SELECT * " 
				   + " FROM user_2"
				   + " WHERE id = ? "
				   + " AND password = ? ";
		User user = null;
		
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setString(2, pw);
			
			rs = psmt.executeQuery();
			
			if ( rs.next() ) {
				user = new User();
				user.setId( rs.getString("id") );
				user.setPassword( rs.getString("password") );
				user.setName( rs.getString("name") );
				user.setAddress( rs.getString("address") );
				user.setPhone( rs.getInt("phone") );
			}
		} catch (Exception e) {
			System.err.println("사용자 조회 시, 에러 발생");
			e.printStackTrace();
		}
		return user;
	}
	
	/**
	 * 수정
	 * @param user
	 * @return
	 */
	public int update(User user) {
		
		int result = 0;
		String sql = " UPDATE user_2"
				   + "    SET password = ? "
				   + "		 ,name = ? "
				   + "		 ,phone = ? "
				   + "		 ,address= ? "
				   + " WHERE id = ? ";
		
		int no = 1;
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(no++, user.getPassword());
			psmt.setString(no++, user.getName());
			psmt.setInt(no++, user.getPhone());
			psmt.setString(no++, user.getAddress());
			psmt.setString(no++, user.getId());
			
			result = psmt.executeUpdate();			// 상품 등록 요청
			
		} catch (SQLException e) {
			System.err.println("정보 수정 중, 에러 발생!");
			e.printStackTrace();
		}
		System.out.println("유저 정보가 수정되었습니다.");
		return result;
	}
	
	/**
	 * 삭제
	 * @param user
	 * @return
	 */
	public int delete(String id) {
		int result = 0;
		String sql = " DELETE FROM user_2"				
				   + " WHERE id = ? ";
		
		int no = 1;
		try {
			psmt = con.prepareStatement(sql);
			psmt.setString(no++, id);
			result = psmt.executeUpdate();			// 상품 삭제 요청
			
		} catch (SQLException e) {
			System.err.println("정보 삭제 중, 에러 발생!");
			e.printStackTrace();
		}
		return result;
	}
	
	public ArrayList<User> getList(User user){
		String sql = "SELECT * FROM user_2 ";
		ArrayList<User> list = new ArrayList<User>();
		try {
			psmt = con.prepareStatement(sql);
			rs = psmt.executeQuery();
			while (rs.next()) {
				user.setId(rs.getString(0));
				user.setName(rs.getString(1));
				user.setAddress(rs.getString(2));
				user.setPhone(rs.getInt(3));
				list.add(user);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list; 
	}
	
	/**
	 * 상품 목록
	 * @return
	 */
	public List<User> list() {
		
		ArrayList<User> userList = new ArrayList<User>();
		
		String sql = " SELECT * FROM user_2";
		
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			
			while( rs.next() ) {
				User user = new User();
				
				user.setId( rs.getString("id") );
				user.setName( rs.getString("name") );
				user.setAddress( rs.getString("address") );
				user.setPhone( rs.getInt("phone") );
				
				userList.add(user);
			}
			
		} catch (SQLException e) {
			System.err.println("상품 목록 조회 시, 에러 발생");
			e.printStackTrace();
		}
		return userList; 
	}
}
