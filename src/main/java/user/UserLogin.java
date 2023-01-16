package user;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import user.beans.UserBean;
import user.dao.UserDao;

import java.io.IOException;

/**
 * Servlet implementation class UserLogin
 */
@WebServlet("/user/user_login")
public class UserLogin extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");

		String username = request.getParameter("username");
		String password = request.getParameter("password");

		UserBean user = new UserBean(username, password);

		boolean login_success = UserDao.userLogin(user);

		
		
		if (login_success) {

			
			UserBean user1=UserDao.getUserBean(username, password);
			
			HttpSession user_session = request.getSession();

			user_session.setAttribute("user_login", user1);
			
			response.sendRedirect("user_home.jsp?msg=LOG IN SUCCESS");

		} else {
			response.sendRedirect("user_login.jsp?msg=SOMETHING WENT wrong");
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
