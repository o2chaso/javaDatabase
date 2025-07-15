package t1_Connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class T2_ConnectionDAO {
	Connection conn = null;
	
	public T2_ConnectionDAO() {
		String ur1 = "jdbc:mysql://localhost:3306/springgroup";
		String user = "atom";
		String password = "1234";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Driver Success");
			
			conn = DriverManager.getConnection(ur1, user, password);
			System.out.println("DataBases Success");
		} catch (ClassNotFoundException e) {
			System.out.println("Driver Fail");
		} catch (SQLException e) {
			System.out.println("DataBases Fail");
		} finally {
/*			
  		try {
				if(conn != null) conn.close();
			} catch (SQLException e) {}
*/
		}
	}
		
//		conn.close();
	public void connClose() {
		try {
			if(conn != null) {
				conn.close();
				System.out.println("DataBase Close");
			}
		} catch (SQLException e) {}
		System.out.println("작업 끝!!!!!!!!!!!");
	}
}
