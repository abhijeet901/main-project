<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login</title>
</head>
<body>

<center>
<h2>LOGIN</h2>

<div class="container">
<form action="performlogin" method="post">
<div class="form-group">
<label for="txtname">Enter Name:</label><input type="text" name="username" id="username" required class="form-control"><br/><br/><br/>
<label for="txtpass">Enter Password:</label><input type="password" name="password" id="password" required class="form-control"><br/><br/><br/>
<button type="submit" class="btn btn-success">Login</button>
<div class="panel-footer ">
						New User? <a href="register" onClick=""> Sign Up Here </a>
					<br/>
						Forgot Password?<a href="ForgetPassword" onClick="">Click here..</a>
					</div>
</div>
</form>
</div>
</center>

</body>
</html>
