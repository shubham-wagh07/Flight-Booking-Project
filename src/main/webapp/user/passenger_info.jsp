<!DOCTYPE html>
<%@page import="user.beans.UserBean"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Date"%>
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

<title>Flight Available List</title>

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
	height: 100%;
	width: 100%;
	align-items: center;
	justify-content: center;
	 background-image: url('');
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

<body style="background-color:  cyan">
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
<div class="bgdiv">



<div class="pt-5">
  
<div class="container">
                <div class="row">
                    <div class="col-md-5 mx-auto">
                        <div class="card card-body">


<form id="submitForm" action="passengers_info" method="post" data-parsley-validate="" data-parsley-errors-messages-disabled="true" novalidate="" _lpchecked="1"><input type="hidden" name="_csrf" value="7635eb83-1f95-4b32-8788-abec2724a9a4">
                                <% 	
int total_seat=Integer.parseInt(request.getParameter("total_seat"));
                                
String flight_id=request.getParameter("flight_id");
String user_id=request.getParameter("user_id");
 
 for(int i=1;i<=total_seat;i++)
 {
%>
                                <h1>Passenger <%=i %></h1>
                                <div class="form-group required">
                                    <lSabel for="username">Passenger Name</lSabel>
                                    <input type="text" class="form-control text-lowercase" id="passenger_name" name="passenger_name<%=i %>" required>
                                </div>                    
                                <div class="form-group required">
                                    <label class="d-flex flex-row align-items-center" for="passenger_age">Passenger Age
                                        <a class="ml-auto border-link small-xl" href="/forget-password"></a></label>
                                    <input type="text" class="form-control"  id="passenger_age" name="passenger_age<%=i %>" required>
                                </div>
                                
                                <div class="form-group required">
                                    <lSabel for="username">Passenger Gender</lSabel>
                                    <input type="text" class="form-control text-lowercase" id="passenger_gender" name="passenger_gender<%=i %>" required>
                                </div>  
                                
                                <div class="form-group mt-4 mb-4">
                                   <% } %> 
                                </div>
                                <input type="hidden" value="<%=total_seat%>" name="total_seat">
                                 <input type="hidden" value="<%=flight_id%>" name="flight_id">
                                  <input type="hidden" value="<%=user_id%>" name="user_id">
                                <div class="form-group pt-1">
                                    <button class="btn btn-primary btn-block" type="submit">Save</button>
                                </div>
                            </form>
                            
		
</div>
</div>
</div>
</div>
</div>	


	
</body>

</html>