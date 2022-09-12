package kr.co.jsp.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class JdbcUtil {
	//메소드 중복 선언 = 오버로딩
	//메소드명은 같지만 매개변수 갯수가 다르다.
	//구분은 매개변수 갯수로 구분한다.
	//생성자 또한 오버로딩이 가능하다.

	public static void close(Connection conn, PreparedStatement pstmt) {
		
			try {
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (SQLException e) {
				System.out.println("close 과정에서 에러 발생!");
			}
	}
	
	public static void close(Connection conn, PreparedStatement pstmt, ResultSet rs) {
		try {
			if(rs != null) rs.close();
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		} catch (SQLException e) {
			System.out.println("close 과정에서 에러 발생!");
		}
	}
	
}
