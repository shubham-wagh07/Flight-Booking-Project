package admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import connections.Conn;

@WebServlet("/admin/unblock_user")
public class Unblock_User extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
String user_id=request.getParameter("user_id");
		
		Connection con=Conn.getConnection();
		
		try
		{
			PreparedStatement ps=con.prepareStatement("update user_details set login_status=? where user_id=?");
			ps.setInt(1, 1);
			ps.setString(2, user_id);
			int count=ps.executeUpdate();
			
			if(count>0)
			{
				response.sendRedirect("user_details.jsp?msg=USER "+user_id+"UNBLOCKED");
			}
			else
			{
				response.sendRedirect("user_details.jsp?msg=SOMETHING WENT WRONG");
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}

		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
