package t1_Connection;

import java.sql.DriverManager;
import java.sql.SQLException;

public class T1_ConnectionDAO {
	
	public T1_ConnectionDAO() {
//	1. JDBC Driver 다운받아서 작업 프로젝트에 등록시켜준다.
		try {
//		2. JDBC Driver 검색
			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("Driver Success");
			
//		3. DB Server 연결(연동) 후 DateBases 사용준비 유무 확인
			String ur1 = "jdbc:mysql://localhost:3306/springgroup";
			String user = "atom";
			String password = "1234";
			
//		Connection conn = DriverManager.getConnection(ur1, user, password);
			DriverManager.getConnection(ur1, user, password);
			System.out.println("DataBases Success");
			
//   	4. DateBases 안의 Table 사용 처리		
		} catch (ClassNotFoundException e) {
			System.out.println("Driver Fail");
		} catch (SQLException e) {
			System.out.println("DataBases Fail");
		} finally {
			System.out.println("작업 끝!!!!!!!!!!!");
		}
//	conn.close();
	}
}
