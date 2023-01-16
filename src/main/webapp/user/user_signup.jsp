<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>USER REGISTRATION</title>
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
  <h1 class="text-center">USER REGISTRATION</h1>
  
<div class="container">
                <div class="row">
                    <div class="col-md-5 mx-auto">
                        <div class="card card-body">
                                                    
                            <form id="submitForm" action="user_signup" method="get" data-parsley-validate="" data-parsley-errors-messages-disabled="true" novalidate="" _lpchecked="1"><input type="hidden" name="_csrf" value="7635eb83-1f95-4b32-8788-abec2724a9a4">
                                <div class="form-group required">
                                    <lSabel for="username">Username</lSabel>
                                    <input type="text" class="form-control text-lowercase" id="username" name="username" required>
                                </div>                    
                                <div class="form-group required">
                                    <label class="d-flex flex-row align-items-center" for="password">Password 
                                        <a class="ml-auto border-link small-xl" href="/password"></a></label>
                                    <input type="password" class="form-control"  id="password" name="password" required>
                                </div>
                                
                                <div class="form-group required">
                                    <label class="d-flex flex-row align-items-center" for="firstname">Firstname 
                                        <a class="ml-auto border-link small-xl" href="/forget-password"></a></label>
                                    <input type="text" class="form-control"  id="firstname" name="firstname" required>
                                </div>
                                
                                
                                <div class="form-group required">
                                    <label class="d-flex flex-row align-items-center" for="lastname">Lastname
                                        <a class="ml-auto border-link small-xl" href="/forget-password"></a></label>
                                    <input type="text" class="form-control"  id="lastname" name="lastname" required>
                                </div>
                                
                                <div class="form-group required">
                                    <label class="d-flex flex-row align-items-center" for="dob">DOB 
                                        <a class="ml-auto border-link small-xl" href="/forget-password"></a></label>
                                    <input type="date" class="form-control"  id="dob" name="dob" required>
                                </div>
                                
                                <div class="form-group required">
                                    <label class="d-flex flex-row align-items-center" for="age">Age
                                        <a class="ml-auto border-link small-xl" href="/forget-password"></a></label>
                                    <input type="text" class="form-control"  id="age" name="age" required>
                                </div>
                                
                                <div class="form-group required">
                                    <label class="d-flex flex-row align-items-center" for="gender">Gender
                                        <a class="ml-auto border-link small-xl" href="/forget-password"></a></label>
                                    <input type="text" class="form-control"  id="gender" name="gender" required>
                                </div>
                                
                                <div class="form-group required">
                                    <label class="d-flex flex-row align-items-center" for="address">Address
                                        <a class="ml-auto border-link small-xl" href="/forget-password"></a></label>
                                    <input type="text" class="form-control"  id="address" name="address" required>
                                </div>
                                
                                <div class="form-group required">
                                    <label class="d-flex flex-row align-items-center" for="phone">Phone number
                                        <a class="ml-auto border-link small-xl" href="/forget-password"></a></label>
                                    <input type="text" class="form-control"  id="phone" name="phone" required>
                                </div>
                                
                                
                                
                                <div class="form-group mt-4 mb-4">
                                    
                                </div>
                                <div class="form-group pt-1">
                                    <button class="btn btn-primary btn-block" type="submit">Register</button>
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
