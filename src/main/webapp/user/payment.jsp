<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="connections.Conn"%>
<%@page import="java.sql.Connection"%>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>Payment</title>
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
	 background-image: url('../images/payment.jpg');
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


<%

int total_seat=Integer.parseInt(request.getParameter("total_seat"));

String flight_id=request.getParameter("flight_id");

int total_price=0;

Connection con=Conn.getConnection();
int fair_price=0;
try
{
	PreparedStatement ps=con.prepareStatement("select fair_price from flight_schedule_details where flight_id=?");
	ps.setString(1, flight_id);
	ResultSet rs=ps.executeQuery();
	
	if(rs.next())
	{
		total_price=total_seat*Integer.parseInt(rs.getString(1));
		fair_price=Integer.parseInt(rs.getString(1));
	}
	
}
catch(Exception e)
{
	e.printStackTrace();
}

%>

</head>
<body>

<div class="bgdiv">

<!-- partial:index.partial.html -->
<div class="pt-5">
  <h1 class="text-center">Bank Details</h1>
  
<div class="container">
                <div class="row">
                    <div class="col-md-5 mx-auto">
                        <div class="card card-body">
                                                    
                            <form id="submitForm" action="payment_process" method="post" >
                                <div class="form-group required">
                                    <lSabel for="amount_paid">Amount To Be Paid</lSabel>
                                    <input type="text" value="<%=total_seat%>X<%=fair_price%>=<%=total_price %>" class="form-control text-lowercase" id="amount_paid" name="amount_paid" required readonly />
                                </div>                    
                               
                                
                                 <div class="form-group required">
                                
                                <label for="bank">Select A Bank:</label><br>

                                 <select name="bank" id="bank">
                                 <option value="hdfc">HDFC</option>
                                 <option value="axis">Axis Bank</option>
                                 <option value="bandhan">Bandhan Bank</option>
                                 <option value="icic">ICICI Bank</option>
                                 <option value="yes">YES Bank</option>
                                 
                                 </select>
                                
                                 </div>
                                
                                <input type="hidden" value="<%=request.getParameter("user_id") %>" name="user_id" />
                                <input type="hidden" value="<%=request.getParameter("flight_id") %>" name="flight_id" />
                                <input type="hidden" value="<%=total_seat %>" name="total_seat" />
                                
                                <div class="form-group mt-4 mb-4">
                                    
                                </div>
                                <div class="form-group pt-1">
                                    <button class="btn btn-primary btn-block" type="submit">PAY</button>
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
