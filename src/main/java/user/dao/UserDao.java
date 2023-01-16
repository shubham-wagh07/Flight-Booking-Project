package user.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import connections.Conn;
import user.beans.UserBean;

public class UserDao {

	public static boolean userRegistration(UserBean user) {

		Connection con = Conn.getConnection();

		try {
			PreparedStatement ps = con.prepareStatement("insert into shubh values(?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getPassword());
			ps.setString(3, user.getFirstname());
			ps.setString(4, user.getLastname());
			ps.setDate(5, user.getDob());
			ps.setInt(6, user.getAge());
			ps.setString(7, user.getGender());
			ps.setString(8, user.getAddress());
			ps.setString(9, user.getPhone());
			ps.setInt(10, 1);

			int count = ps.executeUpdate();

			if (count > 0) {
				return true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return false;
	}

	public static boolean userLogin(UserBean user) {
		Connection con = Conn.getConnection();
		int login_status;
		try {

			PreparedStatement pst = con
					.prepareStatement("select login_status from user_details where user_id=? and user_password=?");
			pst.setString(1, user.getUsername());
			pst.setString(2, user.getPassword());

			ResultSet rts = pst.executeQuery();

			if (rts.next()) {
				login_status = rts.getInt(1);

				if (login_status == 1) {
					return true;
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public static UserBean getUserBean(String username, String password) {
		Connection con = Conn.getConnection();
		UserBean user = null;
		try {
			PreparedStatement ps = con
					.prepareStatement("select * from user_details where user_id=? and user_password=?");
			ps.setString(1, username);
			ps.setString(2, password);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				user = new UserBean(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDate(5),
						rs.getInt(6), rs.getString(7), rs.getString(8), rs.getString(9));

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return user;
	}

	
	
}
