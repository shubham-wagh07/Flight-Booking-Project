<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="connections.Conn"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Booking Detail	s</title>

<style>

.divborder
{
	border:2px solid green;
}

</style>


</head>
<body>
<div class="divborder">
<center><h1>BOOKING DETAILS</h1></center>
<%

String b_id=request.getParameter("booking_id");


String user_id="";
String user_name="";
String flight_id="";
String flight_name="";
String phone="";
int total_seat=0;
int fair_price=0;
int total_paid=0;
String bank="";

Class.forName("com.mysql.jdbc.Driver");  
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_flight_reservation_system","root","");  

PreparedStatement ps=conn.prepareStatement("select * from flight_booking_details where booking_id=?");
ps.setInt(1, Integer.parseInt(b_id));

ResultSet rs=ps.executeQuery();

if(rs.next())
{
	user_id=rs.getString(2);
	user_name=rs.getString(3);
	flight_id=rs.getString(4);
	flight_name=rs.getString(5);
	phone=rs.getString(6);
	total_seat=rs.getInt(7);
	fair_price=rs.getInt(8);
	total_paid=rs.getInt(9);
	bank=rs.getString(10);
}

%>

<table>

<tr>
<td><h2>Booking Id:</h2></td>
<td><h2><%=b_id %></h2></td>
</tr>

<tr>
<td><h2>User Id:</h2></td>
<td><h2><%=user_id %></h2></td>
</tr>

<tr>
<td><h2>User Name:</h2></td>
<td><h2><%=user_name %></h2></td>
</tr>

<tr>
<td><h2>Flight Id:</h2></td>
<td><h2><%=flight_id %></h2></td>
</tr>

<tr>
<td><h2>Flight Name:</h2></td>
<td><h2><%=flight_name %></h2></td>
</tr>

<tr>
<td><h2>Total Seat Booked:</h2></td>
<td><h2><%=total_seat %></h2></td>
</tr>

<tr>
<td><h2>Fair Price:</h2></td>
<td><h2><%=fair_price %></h2></td>
</tr>

<tr>
<td><h2>Total Paid:</h2></td>
<td><h2><%=total_paid %></h2></td>
</tr>


<tr>
<td><h2>Phone Number:</h2></td>
<td><h2><%=phone %></h2></td>
</tr>

<tr>
<td><h2>Bank Name:</h2></td>
<td><h2><%=bank %> bank</h2></td>
</tr>


</table>
<center> <button onclick="window.location.href = 'user_home.jsp';">HOME</button>
</center>
</body>
</html>