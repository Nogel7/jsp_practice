package kr.co.ict;

import java.sql.*;
import java.util.Scanner;

public class JDBCpstmtDelete {

	public static void main(String[] args) {
		// DELETE 구문을 실행하는 코드를 작성햅세요.
		// 삭제의 기준은 uid가 일치하는 자료를 삭제합니다
		// * 접속 정보는 변수로 관린해주세요.
		String dbType = "com.mysql.cj.jdbc.Driver";
		String dbUrl = "jdbc:mysql://localhost:3306/jdbcprac1";
		String dbId = "root";
		String dbPw = "mysql";
		
		// 작성 순서
		// 1. 스캐너로 삭제할 회원 uid 입력받기
		// 2. DB와 자바 연결
		// 3. 쿼리문에 ? 를 포함해 작성한 후 PreparedStatement 객체 작성
		// 4. 실행
		
		try {
			Scanner scan = new Scanner(System.in);
			System.out.println("삭제할 회원의 아이디를 입력해주세요.");
			String uid = scan.nextLine();
			
			Class.forName(dbType);
			Connection con = DriverManager.getConnection(dbUrl,dbId,dbPw);
			
			String sql = "DELETE FROM userinfo WHERE uid = ?";
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setString(1,uid);
			
			pstmt.executeUpdate();
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}

	}

}
