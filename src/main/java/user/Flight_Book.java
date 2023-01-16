package user;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import connections.Conn;

/**
 * Servlet implementation class Flight_Book
 */

@WebServlet("/user/book_flight")
public class Flight_Book extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user_id=request.getParameter("user_id");
		String flight_id=request.getParameter("flight_id");
		
		Connection con=Conn.getConnection();
		
		try
		{
			PreparedStatement ps=con.prepareStatement("select flight_source,flight_destination from flight_details where flight_id=?");
			ps.setString(1, flight_id);
			
			ResultSet rs=ps.executeQuery();
			
			if(rs.next())
			{
				PreparedStatement ps1=con.prepareStatement("select fair_price from flight_schedule_details where flight_id=?");
				ps1.setString(1, flight_id);
				
				ResultSet rs1=ps1.executeQuery();
				if(rs1.next()) {
				PreparedStatement ps2=con.prepareStatement("insert into flight_book values(?,?,?,?,?)");
				ps2.setString(1, user_id);
				ps2.setString(2, flight_id);
				ps2.setString(3, rs.getString(1));
				ps2.setString(4, rs.getString(2));
				ps2.setString(5, rs1.getString(1));
				
				int count=ps2.executeUpdate();
				
				
				if(count>0)
				{
					response.sendRedirect("booked_details.jsp?msg=FLIGHT BOOKED");
				}
				else
				{
					response.sendRedirect("user_scheduled_flight_details.jsp?msg=FLIGHT BOOKING FAILED");
				}
				}
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
