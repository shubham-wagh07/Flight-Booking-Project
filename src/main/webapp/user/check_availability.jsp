<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="connections.Conn"%>
<%@page import="java.sql.Connection"%>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Book Flight</title>
  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Muli'><link rel="stylesheet" href="./style.css">

<%

String msg=request.getParameter("msg");


if(msg!=null)
{
	%>

<script type="text/javascript">

var msgdata = "<%=msg%>";

alert(msgdata);

</script>

<% } %>




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
    position: absolute;
    top: 0px;
    right: 0px;
    bottom: 0px;
    left: 0px;
    background-color: rgba(0,0,0,0.6);
}


.flightListTable table, .flightListTable th, .flightListTable td {
	border: 2px solid #333;
	border-collapse: collapse;
}

.flightListTable tr {
	color: white;
}




</style>

</head>
<body  style="background-color:red">
<!-- partial:index.partial.html -->

<div class="bgdiv">

<div class="pt-5">
  <h1 class="text-center">Check Availability</h1>
  
<div class="container">
                <div class="row">
                    <div class="col-md-5 mx-auto">
                        <div class="card card-body">
                                                    
                            <form id="submitForm" action="check_availability" method="post" data-parsley-validate="" data-parsley-errors-messages-disabled="true" novalidate="" _lpchecked="1"><input type="hidden" name="_csrf" value="7635eb83-1f95-4b32-8788-abec2724a9a4">
                                <div class="form-group required">
                                    <lSabel for="username">Travel Date</lSabel>
                                    <input type="date" class="form-control text-lowercase" id="date" name="date" required>
                                </div>                    
                                <div class="form-group required">
                                    <label class="d-flex flex-row align-items-center" for="source">Source
                                        <a class="ml-auto border-link small-xl" href="/forget-password"></a></label>
                                    <input type="text" class="form-control"  id="source" name="source" required>
                                </div>
                                
                                <div class="form-group required">
                                    <label class="d-flex flex-row align-items-center" for="destination">Destination
                                        <a class="ml-auto border-link small-xl" href="/forget-password"></a></label>
                                    <input type="text" class="form-control"  id="destination" name="destination" required>
                                </div>
                                
                                <div class="form-group mt-4 mb-4">
                                    
                                </div>
                                <div class="form-group pt-1">
                                    <button class="btn btn-primary btn-block" type="submit">Check Availability</button>
                                </div>
                            </form>
                           <!--  <p class="small-xl pt-3 text-center">
                                <span class="text-muted">Don't have account?</span>
                                <a href="/signup">Sign up</a>
                            </p> -->
                        </div>
                    </div>
                </div>
                
                                
                
            </div>
</div>
<!-- partial -->
 </div> 
</body>
</html>
