package admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.annotation.WebServlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import admin.beans.Admin_Bean;
import connections.Conn;

/**
 * Servlet implementation class Admin_Login
 */
@WebServlet("/Admin_Login")
public class Admin_Login extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		
		
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		
		Connection con=Conn.getConnection();
		
		try {
			PreparedStatement stmt=con.prepareStatement("select * from admin_details where admin_username=? and admin_password=?");
			stmt.setString(1, username);
			stmt.setString(2, password);
			
			
			ResultSet rs=stmt.executeQuery();
			
			if(rs.next())
			{
			
				Admin_Bean admin=new Admin_Bean(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4)); 
				
				HttpSession admin_session=request.getSession();
				
				admin_session.setAttribute("admin_login",admin);
				
				response.sendRedirect("admin_home.jsp?msg=login successfull");
			}
			
			else
			{
				response.sendRedirect("admin_login.jsp?msg=please enter correct username or password");
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
