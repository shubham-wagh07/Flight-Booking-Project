<!DOCTYPE html>
<%@page import="user.beans.UserBean"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
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
UserBean user_bean= (UserBean)session.getAttribute("user_login");
		   
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

<body style="background-color: red">

<div class="bgdiv">

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

								
								
							</ul>

							<div class="login_btn-contanier ml-0 ml-lg-5">
								<a href="user_logout"> <span> LOGOUT </span>
								</a>
							</div>

						</div>
					</div>

				</nav>
			</div>
		</header>


		<table class="flightListTable" style="width: 100%">
			<tr>
				<th>FLIGHT ID</th>
				<th>FLIGHT NAME</th>
				<th>AVAILABLE DAYS</th>
				<th>FAIR PRICE</th>
				<th>SOURCE</th>
				<th>DESTINATION</th>
				<th>ESTIMATED TRAVEL DURATION</th>
				<th>SEATING CAPACITY</th>
				<th>RESERVATION TYPE</th>
				<th>RESERVATION CAPACITY</th>
				<th colspan="1">ACTION</th>
			</tr>


               <%
               
               Connection con=Conn.getConnection();
               
               try
               {
            	   PreparedStatement ps=con.prepareStatement("select * from flight_schedule_details inner join flight_details  on flight_details.flight_id=flight_schedule_details.flight_id");
               
                   ResultSet rs=ps.executeQuery();
                   
                   while(rs.next())
                   
                   {
                	  %> 
                	  
                	 <tr>
                	 
                	 <td><%=rs.getString(1) %></td>
                	 <td><%=rs.getString(2) %></td>
                	 <td><%=rs.getString(3) %></td>
                	 <td><%=rs.getString(4) %></td>
                	 <td><%=rs.getString(7) %></td>
                	 <td><%=rs.getString(8) %></td>
                	 <td><%=rs.getString(9) %></td>
                	 <td><%=rs.getInt(10) %></td>
                	 <td><%=rs.getString(11) %></td>
                	 <td><%=rs.getInt(12) %></td>
                	 <td><button onclick="window.location.href = 'passenger_no.jsp?flight_id=<%=rs.getString(1) %>&user_id=<%=user_bean.getUsername()%>';">BOOK</button></td>
                	 
                	 </tr> 
                	  
            	   
               <% }}
               catch(Exception e)
               {
            	   e.printStackTrace();
               }
               
               %>
            	   
            	   
            	  
            	  

		</table>
		
		
		</div>
</body>
<%


%>
</html>