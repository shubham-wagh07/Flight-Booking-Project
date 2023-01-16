package user;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import connections.Conn;

@WebServlet("/user/payment_process")
public class Payment_process extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String user_id=request.getParameter("user_id");
		String flight_id=request.getParameter("flight_id");
		String total_seat=request.getParameter("total_seat");
		String amount_paid=request.getParameter("amount_paid");


		String bank=request.getParameter("bank");

			




		Connection con=Conn.getConnection();

		String firstname="";
		String lastname="";
		String phone="";
		String flight_name="";
		String fair_price="";
		try
		{
		   PreparedStatement ps=con.prepareStatement("select * from user_details where user_id=?");
		   ps.setString(1, user_id);
		   ResultSet rs=ps.executeQuery();
		   
		   if(rs.next())
		   {
			   firstname=rs.getString(3);
			   lastname=rs.getString(4);
			   phone=rs.getString(9);
		   }
		   
		   PreparedStatement ps1=con.prepareStatement("select fligh_name,fair_price from flight_schedule_details where flight_id=?");
		   ps1.setString(1, flight_id);
		   ResultSet rs1=ps1.executeQuery();
		   
		   if(rs1.next())
		   {
			   flight_name=rs1.getString(1);
			   fair_price=rs1.getString(2);
		   }
		   
		   
		   
		   int total_paid=Integer.parseInt(total_seat)*(Integer.parseInt(fair_price));

		   
		   
		   
		   
		   Class.forName("com.mysql.jdbc.Driver");  
		   Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_flight_reservation_system","root","");  

		   PreparedStatement psins=conn.prepareStatement("insert into flight_booking_details(user_id,user_name,flight_id,flight_name,user_phone,total_seat,fair_price,total_paid,bank_name) values(?,?,?,?,?,?,?,?,?)",Statement.RETURN_GENERATED_KEYS);
		   psins.setString(1, user_id);
		   psins.setString(2, firstname);
		   psins.setString(3, flight_id);
		   psins.setString(4, flight_name);
		   psins.setString(5, phone);
		   psins.setInt(6, Integer.parseInt(total_seat));
		   psins.setInt(7, Integer.parseInt(fair_price));
		   psins.setInt(8,total_paid);
		   psins.setString(9, bank);

		   psins.executeUpdate();


		   ResultSet rsins = psins.getGeneratedKeys();
		   int generatedKey = 0;
		   if (rsins.next()) {
		       generatedKey = rsins.getInt(1);
			   	response.sendRedirect("payment_success.jsp?msg=PAYMENT SUCCESS"+"&booking_id="+generatedKey);

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
