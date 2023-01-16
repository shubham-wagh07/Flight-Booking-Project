package user;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/user/passengers_info")
public class Passengers_Info extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int total_seat=Integer.parseInt(request.getParameter("total_seat"));
		
		for(int i=1;i<=total_seat;i++)
		{
			String p_name=request.getParameter("passenger_name"+i);
			String p_age=request.getParameter("passenger_age"+i);
			String p_gender=request.getParameter("passenger_gender"+i);
			
			
			
		}
		
		
		String flight_id=request.getParameter("flight_id");
		String user_id=request.getParameter("user_id");
		response.sendRedirect("payment.jsp?total_seat="+total_seat+"&flight_id="+flight_id+"&user_id="+user_id);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
