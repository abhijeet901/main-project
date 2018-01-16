<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
  <title>Online Mobile Store</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
</head>
<body>
<h1><img src="images/logo2.png" width="100%" height="200" border="0" /></h1>

    <c:choose>
    <c:when test="${sessionScope.UserLoggedIn == 'true'}">
    <nav class="navbar navbar-default" style="font-weight: bold; background-color:#8A0808;">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="mainpage"><font color="white">MobileStore</font></a>
    </div>
    <ul class="nav navbar-nav">
    <li><a href="userproduct"><font color="white">Products</font></a></li>
   <li> <a href="about_us"><font color="white">About Us</font></a></li>
   <li><a href="contact_us"><font color="white">Contact Us</font></a></li>
   <li><a href="addcart"><font color="white">Cart</font></a></li>
   
   <li><a href="perform_logout"><font color="white">Sign out</font></a></li>
   </ul>
   </nav>
    
    
     </c:when>
    <c:when test="${sessionScope.Administrator == 'true'}">
     <nav class="navbar navbar-default" style="font-weight: bold; background-color:#8A0808;">
  <div class="container-fluid">
    <div class="navbar-header">
    
      <a class="navbar-brand" href="mainpage"><font color="white">MobileStore</font></a>
    </div>
    <ul class="nav navbar-nav">
     <li><a href="admin"><font color="white">Admin</font></a></li>
     <li><a href="userlist"><font color="white">USER</font></a></li>
     <li><a href="about_us"><font color="white">About Us</font></a></li>
     <li><a href="contact_us"><font color="white">Contact Us</font></a></li>
     <li><a href="category"><font color="white">CATEGORY</font></a></li>
     <li><a href="product"><font color="white">PRODUCT</font></a></li>
     <li><a href="supplier"><font color="white">SUPPLIER</font></a></li>
     <li><a href="perform_logout"><font color="white">Sign out</font></a></li>
     </ul></div></nav>
     
    </c:when>
                 
    			<c:otherwise>
    			 <nav class="navbar navbar-default" style="font-weight: bold; background-color:#8A0808;">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="mainpage"><font color="white">MobileStore</font></a>
      <ul class="nav navbar-nav navbar-right">
		<li><a href="register"><font color="white"><span
							class="glyphicon glyphicon-user"></span>Register</font></a></li>
					<li><a href="login"><font color="white"><span
							class="glyphicon glyphicon-user"></span>Login</font></a></li>
							<li> <a href="about_us"><font color="white">About Us</font></a></li>
							<li><a href="contact_us"><font color="white">Contact Us</font></a></li>
							 <li><a href="userproduct"><font color="white">Products</font></a></li>
      
    </div>
    			
    			
    			</c:otherwise>
    			</c:choose>
   </ul>

			
		</ul>
		
  </div>
</nav>

	
</body>
</html>

