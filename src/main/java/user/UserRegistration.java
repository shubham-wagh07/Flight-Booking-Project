package user;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import user.beans.UserBean;
import user.dao.UserDao;

import java.io.IOException;
import java.sql.Date;

/**
 * Servlet implementation class UserRegistration
 */
@WebServlet("/user/user_signup")
public class UserRegistration extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/jsp");
		
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String firstname=request.getParameter("firstname");
		String lastname=request.getParameter("lastname");
		String dob=request.getParameter("dob");
		int age=Integer.parseInt(request.getParameter("age"));
		String gender=request.getParameter("gender");
		String address=request.getParameter("address");
		String phone=request.getParameter("phone");
		
		
		UserBean user=new UserBean(username, password, firstname, lastname,Date.valueOf(dob), age, gender, address, phone);
		
		boolean registered=UserDao.userRegistration(user);
		
		if(registered)
		{
			response.sendRedirect("user_login.jsp?msg=REGISTRATION SUCCESS");
		}
		else
		{
			response.sendRedirect("user_signup.jsp?msg=SOMETHING WENT WRONG");
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
