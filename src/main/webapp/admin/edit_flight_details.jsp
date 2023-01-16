<!DOCTYPE html>
<%@page import="admin.dao.Admin_Dao"%>
<%@page import="admin.beans.Flight_bean"%>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>UPDATE FLIGHT DETAILS</title>
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

<%

String flight_id=request.getParameter("flightId");

Flight_bean fb=Admin_Dao.getFlightById(flight_id);





%>

  <style>
.bgdiv {
	position: relative;
	height: 100%;
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

</style>

</head>
<body  style="background-color:red">
<!-- partial:index.partial.html -->

<div class="bgdiv">

<div class="pt-5">
  <h1 class="text-center">UPDATE FLIGHT DETAILS</h1>
  
<div class="container">
                <div class="row">
                    <div class="col-md-5 mx-auto">
                        <div class="card card-body">
                                                    
                            <form id="submitForm" action="update_flight_details" method="post" data-parsley-validate="" data-parsley-errors-messages-disabled="true" novalidate="" _lpchecked="1"><input type="hidden" name="_csrf" value="7635eb83-1f95-4b32-8788-abec2724a9a4">
                                <div class="form-group required">
                                    <lSabel for="flight_id">Flight Id</lSabel>
                                    <input type="text" value="<%=fb.getFlightId() %>" class="form-control text-lowercase" id="flight_id" name="flight_id" required>
                                </div>                    
                                <div class="form-group required">
                                    <label class="d-flex flex-row align-items-center" for="flight_name">Flight Name
                                        <a class="ml-auto border-link small-xl" href="/password"></a></label>
                                    <input type="text" value="<%=fb.getFlightName() %>" class="form-control"  id="flight_name" name="flight_name" required>
                                </div>
                                
                                <div class="form-group required">
                                    <label class="d-flex flex-row align-items-center" for="source">Source
                                        <a class="ml-auto border-link small-xl" href="/forget-password"></a></label>
                                    <input type="text" value="<%=fb.getFlightSource() %>" class="form-control"  id="source" name="source" required>
                                </div>
                                
                                
                                <div class="form-group required">
                                    <label class="d-flex flex-row align-items-center" for="destination">Destination
                                        <a class="ml-auto border-link small-xl" href="/forget-password"></a></label>
                                    <input type="text" value="<%=fb.getFlightDestination() %>" class="form-control"  id="destination" name="destination" required>
                                </div>
                                
                                <div class="form-group required">
                                    <label class="d-flex flex-row align-items-center" for="etd">Estimated Travel Duration 
                                        <a class="ml-auto border-link small-xl" href="/forget-password"></a></label>
                                    <input type="text" value="<%=fb.getFlightEtd() %>" class="form-control"  id="etd" name="etd" required>
                                </div>
                                
                                <div class="form-group required">
                                    <label class="d-flex flex-row align-items-center" for="setting_capacity">Seating Capacity
                                        <a class="ml-auto border-link small-xl" href="/forget-password"></a></label>
                                    <input type="text" value="<%=fb.getFlightSittingCapacity() %>" class="form-control"  id="seating_capacity" name="seating_capacity" required>
                                </div>
                                
                                <div class="form-group required">
                                    <label class="d-flex flex-row align-items-center" for="reservation_type">Reservation Type
                                        <a class="ml-auto border-link small-xl" href="/forget-password"></a></label>
                                    <input type="text" value="<%=fb.getFlightReservationType() %>" class="form-control"  id="reservation_type" name="reservation_type" required>
                                </div>
                                
                                <div class="form-group required">
                                    <label class="d-flex flex-row align-items-center" for="reservation_capacitu">Reservation Capacity
                                        <a class="ml-auto border-link small-xl" href="/forget-password"></a></label>
                                    <input type="text" value="<%=fb.getFlightReservationCapacity() %>" class="form-control"  id="reservation_capacity" name="reservation_capacity" required>
                                </div>
                                
                                <input type="hidden" value="<%=flight_id%>" name="flight_details_id">
                                
                                <div class="form-group mt-4 mb-4">
                                    
                                </div>
                                <div class="form-group pt-1">
                                    <button class="btn btn-primary btn-block" type="submit">Update</button>
                                </div>
                            </form>
                            
                        </div>
                    </div>
                </div>
            </div>
</div>
<!-- partial -->
  </div>
</body>
</html>
