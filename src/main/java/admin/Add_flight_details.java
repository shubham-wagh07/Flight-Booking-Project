package admin;

import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import admin.beans.Flight_bean;
import admin.dao.Admin_Dao;



public class Add_flight_details extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String flight_id=request.getParameter("flight_id");
		String flight_name=request.getParameter("flight_name");
		String source=request.getParameter("source");
		String destination=request.getParameter("destination");
		String etd=request.getParameter("etd");
		int seating_capacity=Integer.parseInt(request.getParameter("seating_capacity"));
		String reservation_type=request.getParameter("reservation_type");
		int reservation_capacity=Integer.parseInt(request.getParameter("reservation_capacity"));
		
		
		Flight_bean fb=new Flight_bean(flight_id, flight_name, source, destination, etd, seating_capacity, reservation_type, reservation_capacity);

		boolean inserted=Admin_Dao.addFlightDetails(fb);
		
		if(inserted)
		{
			response.sendRedirect("flight_details.jsp?msg=Successfully inserted");
		}
		else
		{
			response.sendRedirect("flight_details.jsp?msg=Insertion Failed");
		}
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
