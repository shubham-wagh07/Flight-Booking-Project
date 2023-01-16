<!DOCTYPE html>
<%@page import="user.beans.UserBean"%>
<%@page import="admin.beans.Admin_Bean"%>
<html>

<head>
  <!-- Basic -->
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <!-- Mobile Metas -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <!-- Site Metas -->
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />

  <title>User Home</title>

  <!-- slider stylesheet -->
  <link rel="stylesheet" type="text/css"
    href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.1.3/assets/owl.carousel.min.css" />

  <!-- font awesome style -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

  <!-- fonts style -->
  <link href="https://fonts.googleapis.com/css?family=Poppins:400,600,700|Roboto:400,700&display=swap" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="css/responsive.css" rel="stylesheet" />
  <%
UserBean user_bean= (UserBean)session.getAttribute("user_login");
		   
  %>
  
  <style>
.bgdiv {
	position: relative;
	height: 100%;
	width: 100%;
	display:flex;
	align-items: center;
	justify-content: center;
	 background-image: url('../images/plane3.jpg');
    background-size: cover;
}

.bgdiv::before {
    content: "";
    position: absolute;
    top: 0px;
    right: 0px;
    bottom: 0px;
    left: 0px;
    background-color: rgba(0,0,0,0.8);
}

</style>
  
  
  
</head>

<body>

<div class="bgdiv">

  <div class="hero_area">
    <!-- header section strats -->
    <header class="header_section">
      
      <div class="container-fluid">
        <nav class="navbar navbar-expand-lg custom_nav-container pt-3">
          
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <div class="d-flex  flex-column flex-lg-row align-items-center w-100 justify-content-between">
              <ul class="navbar-nav  ">
                <li class="nav-item active">
                  <a class="nav-link" href="user_scheduled_flight_details.jsp">View Scheduled Flight Details </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="user_history.jsp?user_id=<%=user_bean.getUsername()%>">View Your Reserved Flight </a>
                </li>
              </ul>

<div class="login_btn-contanier ml-0 ml-lg-5">
                <a href="user_logout">
                 
                  <span>
                    LOGOUT
                  </span>
                </a>
              </div>

            </div>
          </div>

        </nav>
      </div>
    </header>
    <!-- end header section -->
    <!-- slider section -->
    <section class=" slider_section position-relative">
      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        
        <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="container">
              <div class="row">
                <div class="col-md-4">
                  
                </div>
                <div class="col-md-8">
                  <div class="detail-box">
                    <h1>
                       <br>
                      <span>
                      Welcome
                       <%=user_bean.getFirstname() %>
                      </span>

                    </h1>
                    
                    <div>
                      <a href="check_availability.jsp?user_id=<%=user_bean.getUsername()%>">
                        Book Flight
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          
          </div>
          
           </body>

</html>