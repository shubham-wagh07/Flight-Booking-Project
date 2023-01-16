package admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import admin.dao.Admin_Dao;

/**
 * Servlet implementation class Delete_User_Details
 */
@WebServlet("/admin/delete_user_bookinng_details")
public class Delete_User_Bookinng_Details extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String user_id=request.getParameter("user_id");
		
		boolean deleted=Admin_Dao.deleteUserBooking(user_id);
		
		
		if(deleted)
		{
			response.sendRedirect("user_details.jsp?msg=USER SUCCESSFULLY DELETED");
		}
		else
		{
			response.sendRedirect("user_details.jsp?msg=SOMETHING WENT WRONG");
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
