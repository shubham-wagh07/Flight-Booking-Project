package admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import admin.dao.Admin_Dao;

@WebServlet("/admin/DeleteSecheduledFlightDeteails")
public class DeleteSecheduledFlightDeteails extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
response.setContentType("text/html");
		
		String flight_id=request.getParameter("flightId");
		
		boolean deleted=Admin_Dao.deleteFlightScheduledDetails(flight_id);
		
		if(deleted)
		{
			response.sendRedirect("flight_schedule_details.jsp?msg=deletion done");
		}
		else
		{
			response.sendRedirect("flight_schedule_details.jsp?msg=deletion failed");
		}

		
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
