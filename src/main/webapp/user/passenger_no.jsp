<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Total Seat</title>
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

</style>

</head>
<body>

<div class="bgdiv">

<!-- partial:index.partial.html -->
<div class="pt-5">
  <h1 class="text-center">Total Seat</h1>
  
<div class="container">
                <div class="row">
                    <div class="col-md-5 mx-auto">
                        <div class="card card-body">
                                                    
                            <form id="submitForm" action="passenger_info.jsp" method="post" data-parsley-validate="" data-parsley-errors-messages-disabled="true" novalidate="" _lpchecked="1"><input type="hidden" name="_csrf" value="7635eb83-1f95-4b32-8788-abec2724a9a4">
                                <div class="form-group required">
                                    <lSabel for="username">Total Seat</lSabel>
                                    <input type="text" class="form-control text-lowercase" id="total_seat" name="total_seat" required>
                                </div>                    
                               <input type="hidden" value=<%=request.getParameter("flight_id") %> name="flight_id">
                               <input type="hidden" value=<%=request.getParameter("user_id") %> name="user_id">
                                <div class="form-group mt-4 mb-4">
                                    
                                </div>
                                <div class="form-group pt-1">
                                    <button class="btn btn-primary btn-block" type="submit">Proceed</button>
                                </div>
                            </form>
                            
                        </div>
                    </div>
                </div>
            </div>
</div>

  </div>
</body>
</html>
