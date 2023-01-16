package admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;

import admin.beans.FlightScheduleDetails_Bean;
import admin.dao.Admin_Dao;

@WebServlet("/admin/update_flight_schedule_details")
public class Update_flight_schedule_details extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		
		String flight_id = request.getParameter("flight_id");
		String flight_name = request.getParameter("flight_name");
		String available_days = request.getParameter("avl_days");
        String fair_price=request.getParameter("fair_price");
		String flight_schedule_id = request.getParameter("flight_schedule_details_id");

		FlightScheduleDetails_Bean fsb = new FlightScheduleDetails_Bean(flight_id, flight_name, Date.valueOf(available_days),fair_price);
		
		
		boolean updated=Admin_Dao.updateFlightScheduleDetails(fsb,flight_schedule_id);
		
		
		
		if(updated)
		{
			response.sendRedirect("flight_schedule_details.jsp?msg=UPDATION DONE");
		}
		else
		{
			response.sendRedirect("flight_schedule_details.jsp?msg=UPDATION FAILED");
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);

	}

}
