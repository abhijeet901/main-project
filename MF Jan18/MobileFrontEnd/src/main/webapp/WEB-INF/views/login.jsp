<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<center>
<h2>LOGIN HERE!!!!</h2>

<div class="container">
<form action="performlogin" method="post">
<div class="form-group">
<label for="txtname">Enter Name:<input type="text" name="username" id="username" required class="form-control"></label><br/><br/><br/>
<label for="txtpass">Enter Password:<input type="password" name="password" id="password" required class="form-control"></label><br/><br/><br/>
<button type="submit" class="btn btn-success">Login</button>
<div class="panel-footer ">
						New User? <a href="register" onClick=""> Sign Up Here </a>
					<br/>
						
					</div>
</div>
</form>
</div>
</center>
<%@include file="footer.jsp" %>
</body>
</html>
