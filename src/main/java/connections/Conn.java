package connections;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conn {

	public static Connection getConnection() {
		
		Connection con=null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");

		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/details","root","admin");

		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}

}
