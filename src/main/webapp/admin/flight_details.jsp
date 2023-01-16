<!DOCTYPE html>
<%@page import="connections.Conn"%>
<%@page import="admin.dao.Admin_Dao"%>
<%@page import="admin.beans.Flight_bean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="admin.beans.Admin_Bean"%>
<html>
<%
if (session.getAttribute("admin_login") != null) {
%>
<head>
<!-- Basic -->
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<!-- Mobile Metas -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<!-- Site Metas -->
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta name="author" content="" />

<title>Admin Home</title>

<!-- slider stylesheet -->
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.3/assets/owl.carousel.min.css" />

<!-- font awesome style -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<!-- bootstrap core css -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

<!-- fonts style -->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:400,600,700|Roboto:400,700&display=swap"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="css/style.css" rel="stylesheet" />
<!-- responsive style -->
<link href="css/responsive.css" rel="stylesheet" />
<%
Admin_Bean admin_bean = (Admin_Bean) session.getAttribute("admin_login");
%>

<style>
.flightListTable table, .flightListTable th, .flightListTable td {
	border: 2px solid #333;
	border-collapse: collapse;
}

.flightListTable tr {
	color: white;
}
</style>

 <style>
.bgdiv {
	position: relative;
	height: 100vh;
	width: 100%;
	align-items: center;
	justify-content: center;
	 background-image: url('../images/plane2.jpg');
    background-size: cover;
}

.bgdiv::before {
    content: "";
   
    top: 0px;
    right: 0px;
    bottom: 0px;
    left: 0px;
    background-color: rgba(0,0,0,0.8);
}

</style>


</head>

<body style="background-color: red">
	<div class="hero_area">
		<!-- header section strats -->
		<header class="header_section">

			<div class="container-fluid">
				<nav class="navbar navbar-expand-lg custom_nav-container pt-3">

					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>

					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<div
							class="d-flex  flex-column flex-lg-row align-items-center w-100 justify-content-between">
							<ul class="navbar-nav  ">
                            <li class="nav-item"><a class="nav-link" href="admin_home.jsp">Admin Home </a></li>


								<li class="nav-item"><a class="nav-link" href="add_flight.jsp">Add More Flights </a></li>
								
								
								<li class="nav-item"><a class="nav-link" href="flight_schedule_details.jsp">Flight
										Schedule Details </a></li>
								<li class="nav-item"><a class="nav-link"
									href="user_details.jsp">User Details </a></li>
									<li class="nav-item"><a class="nav-link"
									href="userr_booking_details.jsp">User Booking Details </a></li>
								
									</ul>

							<div class="login_btn-contanier ml-0 ml-lg-5">
								<a href="admin_logout"> <span> LOGOUT </span>
								</a>
							</div>

						</div>
					</div>

				</nav>
			</div>
		</header>
<div class="bgdiv">

		<table class="flightListTable" style="width: 100%">
			<tr>
				<th>FLIGHT ID</th>
				<th>FLIGHT NAME</th>
				<th>SOURCE</th>
				<th>DESTINATION</th>
				<th>ESTIMATED TRAVEL DURATION</th>
				<th>SEATING CAPACITY</th>
				<th>RESERVATION TYPE</th>
				<th>RESERVATION CAPACITY</th>
				<th colspan="2">ACTION</th>
				<th>SCHEDULE</th>
			</tr>


               <%
               
               ArrayList<Flight_bean> flight_bean=Admin_Dao.getAllFlightDetails();
               for(Flight_bean flight:flight_bean)
               {  %>
            	   
            	   
            	   
            	   <tr>
            	   
            	   <td><%=flight.getFlightId() %></td>
            	   <td><%=flight.getFlightName() %></td>
            	   <td><%=flight.getFlightSource() %></td>
            	   <td><%=flight.getFlightDestination() %></td>
            	   <td><%=flight.getFlightEtd() %></td>
            	   <td><%=flight.getFlightSittingCapacity() %></td>
            	   <td><%=flight.getFlightReservationType() %></td>
            	   <td><%=flight.getFlightReservationCapacity() %></td>
            	  
            	   <td><button onclick="window.location.href ='edit_flight_details.jsp?flightId=<%=flight.getFlightId() %>'">Edit</button></td>
            	  <td><button onclick="window.location.href ='DeleteFlightDeteails?flightId=<%=flight.getFlightId() %>'">Delete</button></td>
            	  <td>
            	  <form action="schedule_flight" method="get">
            	 <input type="date" name="date_schedule">
            	 <input type="text" name="fair_price" placeholder="Enter fair price">
            	 <input type="hidden" value="<%=flight.getFlightId() %>" name="flightId">
            	 <input type="submit" value="Schedule">
            	 </td>
            	 </form>
            	   </tr>
            	   
               <% }
               %>

		</table>
	
		
		</div>
		
</body>
<%
}

else {
response.sendRedirect("http://localhost:8005/ONLINE_FLIGHT_RESERVATION_SYSTEM/admin/admin_login.jsp?msg=LOGIN FIRST");
}
%>
</html>