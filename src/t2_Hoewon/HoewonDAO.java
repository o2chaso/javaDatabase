package t2_Hoewon;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class HoewonDAO {
	private Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	private String driver = "com.mysql.cj.jdbc.Driver";
	private String ur1 = "jdbc:mysql://localhost:3306/springgroup";
	private String user = "atom";
	private String password = "1234";

	private String sql = "";
	
	public HoewonDAO() {
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(ur1, user, password);
		} catch (ClassNotFoundException e) {
			System.out.println("Driver Fail...");
		} catch (SQLException e) {
			System.out.println("DataBases Fail...");
		}
	}
	public void connClose()	{
	if(conn != null)
		try {
			conn.close();
		} catch (SQLException e) {}
	}
	
//	개별 회원 조회
	public HoewonVO getNameSearch(String name) {
		HoewonVO vo = new HoewonVO();
		
		try {
			stmt = conn.createStatement();
//			String sql = "select * from hoewon where name = '호시마치 스이세이'";
			sql = "select * from hoewon where name = '"+ name +"'";
			rs	=	stmt.executeQuery(sql);
			
			
			if(rs.next() ) {
				vo.setIdx(rs.getInt("idx"));
				vo.setName(rs.getString("name"));
				vo.setAge(rs.getInt("age"));
				vo.setGender(rs.getString("gender"));
				vo.setAddress(rs.getString("adress"));
			}
			else vo = null;
			
		} catch (SQLException e) {
			System.out.println("SQL Failed : " + e.getMessage());
		}
		
		return vo;
	}
	
//	회원 가입
	public void setHoewonInput(String name) {
		try {
		stmt = conn.createStatement();
//	String sql = "select * from hoewon where name = '호시마치 스이세이'";
		sql = "insert into hoewon(name) values('"+name+"')";
		stmt.executeUpdate(sql);
		

		} catch (SQLException e) {
			System.out.println("SQL Failed : " + e.getMessage());
		}
	}
}
