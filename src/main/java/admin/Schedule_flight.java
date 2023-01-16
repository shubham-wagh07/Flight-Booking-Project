package admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import admin.beans.FlightScheduleDetails_Bean;
import connections.Conn;


@WebServlet("/admin/schedule_flight")
public class Schedule_flight extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		response.setContentType("text/html");
		String date=request.getParameter("date_schedule");
		String flight_id=request.getParameter("flightId");
		String fair_price=request.getParameter("fair_price");
		Connection con=Conn.getConnection();
		FlightScheduleDetails_Bean fsb=null;
		try
		{
			PreparedStatement ps=con.prepareStatement("select * from flight_details where flight_id=?");
			ps.setString(1, flight_id);
			
			ResultSet rs=ps.executeQuery();
			
			if(rs.next())
			{
				fsb=new FlightScheduleDetails_Bean(rs.getString(1), rs.getString(2), Date.valueOf(date),fair_price);
			}
			
			PreparedStatement ps1=con.prepareStatement("insert into flight_schedule_details values(?,?,?,?)");
			ps1.setString(1, fsb.getFlightId());
			ps1.setString(2, fsb.getFlightName());
			ps1.setDate(3, fsb.getAvailableDays());
			ps1.setString(4, fair_price);
			
			int  count=ps1.executeUpdate();	
			
			if(count>0)
			{
				response.sendRedirect("flight_details.jsp?msg=FLIGHT SCHEDULED SUCCESSFULLY");
			}
			else
			{
				response.sendRedirect("flight_details.jsp?msg=FLIGHT SCHEDULE FAILED");
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
