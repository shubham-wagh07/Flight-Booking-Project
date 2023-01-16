<!DOCTYPE html>
<%@page import="admin.beans.FlightScheduleDetails_Bean"%>
<%@page import="connections.Conn"%>
<%@page import="admin.dao.Admin_Dao"%>
<%@page import="admin.beans.Flight_bean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="admin.beans.Admin_Bean"%>
<html>

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

<title>Flight Schedule Details</title>

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

<body >



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


								<li class="nav-item"><a class="nav-link" href="flight_details.jsp">Flight
										Schedule Details </a></li>
								<li class="nav-item"><a class="nav-link"
									href="user_details.jsp">User Details </a></li>
									<li class="nav-item"><a class="nav-link"
									href="user_booking_details.jsp">User Booking Details </a></li>
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
				<th>AVAILABLE DAYS</th>
				<th>FAIR PRICE</th>
				<th colspan="2">ACTION</th>
			</tr>


               <%
               
               ArrayList<FlightScheduleDetails_Bean> flight_schedule_bean=Admin_Dao.getFlightScheduleDetails();
               for(FlightScheduleDetails_Bean fsd:flight_schedule_bean)
               {  %>
            	   
            	   
            	   
            	   <tr>
            	   
            	   <td><%=fsd.getFlightId() %></td>
            	   <td><%=fsd.getFlightName() %></td>
            	   <td><%=fsd.getAvailableDays() %></td>
            	   <td><%=fsd.getFairPrice() %></td>
            	   <td><button onclick="window.location.href ='edit_flight_scheduled_details.jsp?flightId=<%=fsd.getFlightId() %>'">Edit</button></td>
            	   <td><button onclick="window.location.href ='DeleteSecheduledFlightDeteails?flightId=<%=fsd.getFlightId() %>'">Delete</button></td>
            	   </tr>
            	   
               <% }
               %>

		</table>
		</div>
</body>

</html>