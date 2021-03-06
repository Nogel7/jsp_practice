package kr.co.ict;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Scanner;

public class JDBCSelectQ1 {

	public static void main(String[] args) {
		// Scanner를 이용해 uid를 입력받은 다음
		// 방금한 SELECT 구문을 응용해서
		// WHERE uid = 입력받은 아이디
		// 형식으로 내가 조회한 아이디의 정보만
        // 콘솔에 찍히도록 로직을 작성해주세요.
		
		// WHERE uid = '아이디명' 이므로
		// 아이디명 앞뒤로 작은 따옴표가 들어갈 수 있도록
		// 전달 쿼리문을 신경써서 작성해주세요.
		// 힌트 : uid='" + 변수명 + "'"
		
		try {
			Scanner scan = new Scanner(System.in);
			System.out.println("조회할 유저의 아이디를 입력해주세요.");
			String uid = scan.nextLine();
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jdbcprac1",
                    "root",
                    "mysql");
			
			Statement stmt = con.createStatement();
			
			ResultSet rs = stmt.executeQuery("SELECT * FROM userinfo WHERE uid = '" + uid +"'");
			
			while(rs.next()) {
				System.out.println("uname: " + rs.getString("uname") +
									", uid: " + rs.getString(2) +
									", upw: " + rs.getString(3) +
									", uemail: " + rs.getString("uemail"));
									
			}
			
			
			
		    }catch(Exception e) {
		 		e.printStackTrace();
			
	    } 
		
	}
   
}
